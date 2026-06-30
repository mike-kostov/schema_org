defmodule SchemaOrg.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/mike-kostov/schema_org"

  def project do
    [
      app: :schema_org,
      version: @version,
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "SchemaOrg",
      description: description(),
      package: package(),
      docs: docs(),
      source_url: @source_url,
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run the `precommit` alias (and its `test` step) in the test environment.
  def cli do
    [preferred_envs: [precommit: :test]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Strictly-typed, pipe-friendly builder for generating SEO Schema.org JSON-LD " <>
      "in Elixir and Phoenix applications. 800+ generated struct modules with typed " <>
      "setter functions for first-class editor auto-complete."
  end

  defp package do
    [
      maintainers: ["Mike Kostov"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url},
      # Ship the runtime API + generated types only — not the maintainer-only
      # build task under lib/mix or the source graph.
      files:
        ~w(lib/schema_org lib/schema_org.ex .formatter.exs mix.exs README.md CHANGELOG.md LICENSE)
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md", "CHANGELOG.md"],
      source_ref: "v#{@version}"
    ]
  end

  defp aliases do
    [
      precommit: ["format --check-formatted", "compile --warnings-as-errors", "test"]
    ]
  end
end
