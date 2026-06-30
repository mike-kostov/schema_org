defmodule Mix.Tasks.SchemaOrg.BuildTypes do
  @shortdoc "Maintainer-only: regenerate lib/schema_org/types/ from the Schema.org graph"

  @moduledoc """
  Regenerates the `SchemaOrg.*` type modules from the official Schema.org JSON-LD graph.

  This task is for **library maintainers only**. It is not part of the runtime
  and is not shipped in the Hex package. It reads the vendored graph, maps every
  Property onto the Classes in its `domainIncludes` (plus inherited Classes via
  `subClassOf`), and renders one Elixir module per Class through an EEx template.

      mix schema_org.build_types
      mix schema_org.build_types --file priv/schemaorg-current-https.jsonld --out lib/schema_org/types

  ## Options

    * `--file` - path to the Schema.org JSON-LD graph (default:
      `priv/schemaorg-current-https.jsonld`)
    * `--out`  - output directory for generated modules (default:
      `lib/schema_org/types`)

  Download the graph with:

      curl -L https://schema.org/version/latest/schemaorg-current-https.jsonld \\
        -o priv/schemaorg-current-https.jsonld
  """

  use Mix.Task

  @default_file "priv/schemaorg-current-https.jsonld"
  @default_out "lib/schema_org/types"
  @template "priv/templates/type.ex.eex"

  # Elixir keywords that cannot be used as bare function/field names.
  @reserved ~w(after and catch cond do else end false fn import in nil not or rescue true when with)

  @impl Mix.Task
  def run(argv) do
    {opts, _, _} = OptionParser.parse(argv, strict: [file: :string, out: :string])
    file = opts[:file] || @default_file
    out = opts[:out] || @default_out

    unless File.exists?(file) do
      Mix.raise("""
      Schema.org graph not found at #{file}.

      Download it first:

          curl -L https://schema.org/version/latest/schemaorg-current-https.jsonld \\
            -o #{@default_file}

      Or pass an explicit path with --file.
      """)
    end

    template = File.read!(@template)
    graph = file |> File.read!() |> Jason.decode!()

    File.mkdir_p!(out)

    modules = build_modules(graph)

    Enum.each(modules, fn mod ->
      source = render_module(template, mod)
      File.write!(Path.join(out, mod.filename), source)
    end)

    Mix.shell().info("Generated #{length(modules)} type modules into #{out}/")
  end

  # ── Graph → list of module specs (pure) ────────────────────────────────────

  @doc """
  Turns a decoded JSON-LD graph into a sorted list of module specs, each ready to
  render: `%{module_name, schema_type, moduledoc, filename, properties}`.
  """
  def build_modules(graph) do
    {classes, properties} = partition_graph(graph)
    direct = direct_properties(properties)
    parents = parent_map(classes)
    prop_index = Map.new(properties, &{&1["@id"], &1})

    classes
    |> Enum.sort_by(& &1["@id"])
    |> Enum.map(fn class ->
      local = local_name(class["@id"])
      mod = module_name(local)

      props =
        class["@id"]
        |> property_ids_for_class(direct, parents)
        |> Enum.map(&Map.fetch!(prop_index, &1))
        |> Enum.map(&descriptor/1)
        |> Enum.uniq_by(& &1.field)
        |> Enum.sort_by(& &1.func)

      %{
        module_name: mod,
        schema_type: local,
        moduledoc: comment_text(class["rdfs:comment"]),
        filename: Macro.underscore(mod) <> ".ex",
        properties: props
      }
    end)
  end

  # ── Graph partitioning + polymorphic normalisation (pure) ───────────────────

  @doc """
  Normalises a polymorphic Schema.org field into a flat list of id strings.

  Handles all four shapes the spec uses interchangeably: `nil` (absent), a bare
  string (e.g. an `@type` value), a single `%{"@id" => id}` object, and a list of
  any of the above.
  """
  def normalize_list(nil), do: []
  def normalize_list(list) when is_list(list), do: Enum.flat_map(list, &normalize_list/1)
  def normalize_list(%{"@id" => id}), do: [id]
  def normalize_list(id) when is_binary(id), do: [id]
  def normalize_list(_), do: []

  @doc "Splits the graph's `@graph` into `{classes, properties}`."
  def partition_graph(graph) do
    nodes = Map.get(graph, "@graph", [])
    {Enum.filter(nodes, &class?/1), Enum.filter(nodes, &property?/1)}
  end

  def class?(node), do: "rdfs:Class" in normalize_list(node["@type"])
  def property?(node), do: "rdf:Property" in normalize_list(node["@type"])

  @doc "Builds `%{class_id => [property_id, ...]}` from each property's `domainIncludes`."
  def direct_properties(properties) do
    Enum.reduce(properties, %{}, fn prop, acc ->
      prop["schema:domainIncludes"]
      |> normalize_list()
      |> Enum.reduce(acc, fn class_id, acc2 ->
        Map.update(acc2, class_id, [prop["@id"]], &[prop["@id"] | &1])
      end)
    end)
  end

  @doc "Builds `%{class_id => [parent_class_id, ...]}` from each class's `subClassOf`."
  def parent_map(classes) do
    Map.new(classes, fn class -> {class["@id"], normalize_list(class["rdfs:subClassOf"])} end)
  end

  @doc """
  All property ids valid on a class: its own (via `domainIncludes`) plus every
  property inherited from a transitive `subClassOf` ancestor. Deduplicated.
  """
  def property_ids_for_class(class_id, direct, parents) do
    [class_id | MapSet.to_list(ancestors(class_id, parents))]
    |> Enum.flat_map(&Map.get(direct, &1, []))
    |> Enum.uniq()
  end

  @doc "Transitive ancestor class ids of `class_id`, cycle-safe."
  def ancestors(class_id, parents) do
    walk(Map.get(parents, class_id, []), parents, MapSet.new())
  end

  defp walk([], _parents, visited), do: visited

  defp walk([id | rest], parents, visited) do
    if MapSet.member?(visited, id) do
      walk(rest, parents, visited)
    else
      walk(Map.get(parents, id, []) ++ rest, parents, MapSet.put(visited, id))
    end
  end

  # ── Name + comment sanitising (pure) ────────────────────────────────────────

  @doc ~S|Strips the `schema:` prefix from an `@id` (e.g. `"schema:Product"` → `"Product"`).|
  def local_name("schema:" <> name), do: name
  def local_name(id) when is_binary(id), do: id

  @doc """
  Maps a Schema.org local name to a valid Elixir module alias.

  PascalCase names pass through. A leading-lowercase name is capitalised. Names
  that are not valid aliases (e.g. `"3DModel"`, which starts with a digit) are
  prefixed with `Type` and stripped of non-alphanumerics — while `schema_type`
  keeps the exact original, so the emitted JSON-LD `@type` stays correct.
  """
  def module_name(local) do
    cond do
      local =~ ~r/^[A-Z][A-Za-z0-9]*$/ ->
        local

      local =~ ~r/^[a-z][A-Za-z0-9]*$/ ->
        String.capitalize(String.first(local)) <> String.slice(local, 1..-1//1)

      true ->
        "Type" <> String.replace(local, ~r/[^A-Za-z0-9]/, "")
    end
  end

  @doc """
  Maps a Schema.org property local name to a snake_case field name, suffixing any
  Elixir keyword with `_` (e.g. `"dateModified"` → `:date_modified`, `"in"` → `:in_`).
  """
  def field_name(local) do
    snake = Macro.underscore(local)
    snake = if snake in @reserved, do: snake <> "_", else: snake
    String.to_atom(snake)
  end

  @doc "Builds the render descriptor for a single property node."
  def descriptor(prop) do
    local = local_name(prop["@id"])
    field = field_name(local)

    %{
      field: field,
      func: Atom.to_string(field),
      json_key: local,
      doc: doc_text(comment_text(prop["rdfs:comment"]), local)
    }
  end

  @doc "Normalises an `rdfs:comment` (string, list, or `@value` map) to plain text."
  def comment_text(nil), do: ""
  def comment_text(text) when is_binary(text), do: text
  def comment_text(%{"@value" => value}), do: value
  def comment_text([first | _]), do: comment_text(first)
  def comment_text(_), do: ""

  defp doc_text("", local), do: "Sets the Schema.org `#{local}` property."
  defp doc_text(comment, local), do: "Sets the Schema.org `#{local}` property.\n\n#{comment}"

  # ── Rendering (pure) ────────────────────────────────────────────────────────

  @doc """
  Renders a module spec to formatted Elixir source via the EEx template.

  Raises if the generated code is not valid Elixir (the format pass parses it),
  which surfaces template/sanitiser bugs immediately instead of writing junk.
  """
  def render_module(template, spec) do
    rendered =
      EEx.eval_string(template,
        module_name: spec.module_name,
        schema_type: spec.schema_type,
        moduledoc: spec.moduledoc,
        properties: spec.properties
      )

    (rendered |> Code.format_string!() |> IO.iodata_to_binary()) <> "\n"
  end
end
