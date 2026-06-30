defmodule SchemaOrg.MixProject do
  use Mix.Project

  @version "0.1.0"
  # NOTE: update this to your real GitHub handle before publishing.
  @source_url "https://github.com/mikekostov/schema_org"

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
      files: ~w(lib priv/templates .formatter.exs mix.exs README.md LICENSE)
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}"
    ]
  end

  defp aliases do
    [
      precommit: ["format --check-formatted", "compile --warnings-as-errors", "test"]
    ]
  end
end
