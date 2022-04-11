defmodule SurfacePolaris.MixProject do
  use Mix.Project

  @source_url "https://github.com/surface-ui/surface_bulma"
  @version "0.3.0"

  def project do
    [
      app: :surface_polaris,
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
            ~r/SurfacePolaris.Actions.(Button).*/
          ],
          "Titles and text": [
            ~r/SurfacePolaris.TitlesText.(Caption|DisplayText|Heading|Subheading|TextContainer|TextStyle|VisuallyHidden).*/
          ],
          Navigation: [~r/SurfacePolaris.Navigation.(FooterHelp|Link).*/],
          "Images and icons": [~r/SurfacePolaris.ImagesIcons.(Badge|Icon|KeyboardKey).*/],
          "Feedback indicators": [~r/SurfacePolaris.Feedback.Spinner*/]
        ],
        nest_modules_by_prefix: [
          SurfacePolaris.Actions,
          SurfacePolaris.Feedback,
          SurfacePolaris.ImagesIcons,
          SurfacePolaris.Navigation,
          SurfacePolaris.TitlesText
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
      {:surface, "~> 0.6.0"},
      {:phoenix_ecto, "~> 4.0", only: [:test, :dev]},
      {:ecto, "~> 3.4.2", only: [:test, :dev]},
      {:exsync, "~> 0.2", only: :dev},
      {:surface_formatter, "~> 0.7.5", only: :dev},
      {:polaris_icon, path: "../polaris_icon"},
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
