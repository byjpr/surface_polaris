defmodule Polaris.MixProject do
  use Mix.Project

  @source_url "https://github.com/surface-ui/surface_bulma"
  @version "0.3.0"

  def project do
    [
      app: :polaris,
      description: "A set of simple Surface components based on Polaris.",
      version: @version,
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      compilers: [:phoenix] ++ Mix.compilers(),
      deps: deps(),
      aliases: aliases(),
      package: package(),
      docs: [
        groups_for_modules: [
          Actions: [
            ~r/Polaris.(Button).*/
          ],
          "Titles and text": [
            ~r/Polaris.(Caption|DisplayText|Heading|Subheading|TextContainer|TextStyle|VisuallyHidden).*/
          ],
          Navigation: [~r/Polaris.(FooterHelp|Link).*/],
          "Images and icons": [~r/Polaris.(Badge|Icon|KeyboardKey).*/],
          "Feedback indicators": [~r/Polaris.Spinner*/]
        ],
        nest_modules_by_prefix: [
          Polaris,
          Polaris,
          Polaris,
          Polaris,
          Polaris
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def catalogues do
    [
      "lib/catalogue"
    ]
  end

  defp elixirc_paths(:dev), do: ["lib"] ++ catalogues()
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:floki, "~> 0.25.0", only: :test},
      {:jason, "~> 1.0"},
      {:surface_catalogue, "~> 0.2.0", only: [:dev, :test]},
      {:surface_font_awesome, "~> 0.2.0"},
      {:credo, "~> 1.5.6", only: :dev},
      {:surface, "~> 0.7.0"},
      {:esbuild, "~> 0.2", only: [:test, :dev]},
      {:phoenix_ecto, "~> 4.0", only: [:test, :dev]},
      {:ecto, "~> 3.4.2", only: [:test, :dev]},
      {:exsync, "~> 0.2", only: :dev},
      {:surface_formatter, "~> 0.7.5", only: :dev, runtime: false},
      {:polaris_icon, git: "https://github.com/byjpr/polaris_icon.git"},
      {:recase, "~> 0.5"}
    ]
  end

  defp aliases do
    [
      dev: "run --no-halt dev.exs"
    ]
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "priv"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
