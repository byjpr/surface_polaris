use Mix.Config

config :phoenix, :json_library, Jason

config :surface_catalogue,
  title: "Shopify Polaris",
  subtitle: "Polaris Surface UI Framework"

config :surface,
  components: [
    {Surface.Components.Form.Field, [default_class: "field"]},
    {Surface.Components.Form.Label, [default_class: "label"]}
  ]

config :esbuild,
  version: "0.13.8",
  default: [
    args: ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# When running `mix dev` inside `surface_catalogue`, there's no need to have the
# assets in "/assets/catalogue" as they are the same we already have in `/assets`.
config :surface_catalogue, :assets_path, "/assets"
