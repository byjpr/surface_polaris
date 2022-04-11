defmodule SurfacePolaris.Catalogue.InlineError do
  @moduledoc """
  """

  defmodule Default do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.InlineError,
      catalogue: SurfacePolaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <InlineError fieldID="myFieldID" message="Store name is required" />
      """
    end
  end

  defmodule NoMessage do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.InlineError,
      catalogue: SurfacePolaris.Catalogue,
      title: "No Message",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <InlineError fieldID="myFieldID" />
      """
    end
  end

  defmodule EmptyMessage do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.InlineError,
      catalogue: SurfacePolaris.Catalogue,
      title: "Empty Message",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <InlineError fieldID="myFieldID" message="" />
      """
    end
  end
end
