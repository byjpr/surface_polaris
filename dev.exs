# iex -S mix dev

Logger.configure(level: :debug)

defmodule Surface.Catalogue.ErrorView do
  use Phoenix.View,
    root: "lib/surface/catalogue/templates",
    namespace: Surface.Catalogue
end

# Start the catalogue server
Surface.Catalogue.Server.start(
  reloadable_compilers: [:phoenix, :elixir, :surface],
  http: [port: 4001],
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:default, ~w(--sourcemap=inline --watch)]}
  ],
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"lib/polaris/*/.*(ex)$"
    ]
  ]
)
