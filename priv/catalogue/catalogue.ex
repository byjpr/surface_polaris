defmodule SurfacePolaris.Catalogue do
  @moduledoc """
  Catalogue implementation for SurfaceBulma.

  Allows calalogue tools to properly run examples and playgrounds provided
  by this lib.
  """

  use Surface.Catalogue

  # load_asset "assets/bulma.min.css", as: :bulma_css
  # <style>#{@bulma_css}</style>

  @impl true
  def config() do
    [
      head_css: """
      <link
        rel="stylesheet"
        href="https://unpkg.com/@shopify/polaris@7.2.0/build/esm/styles.css"
      />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
      """,
      playground: [
        body: [
          style: "padding: 1.5rem; height: 100%;",
          class: "has-background-light"
        ]
      ]
    ]
  end
end
