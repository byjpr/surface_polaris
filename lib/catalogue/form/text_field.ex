defmodule SurfacePolaris.Catalogue.TextField do
  @moduledoc """
  """

  defmodule Default do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.TextField,
      catalogue: SurfacePolaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <TextField />
      """
    end
  end

  defmodule WithError do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.TextField,
      catalogue: SurfacePolaris.Catalogue,
      title: "With Error",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias SurfacePolaris.Form.InlineError

    def render(assigns) do
      ~F"""
      <TextField />
      <InlineError fieldID="myFieldID" message="Store name is required" />
      """
    end
  end
end
