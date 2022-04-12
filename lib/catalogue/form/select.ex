defmodule SurfacePolaris.Catalogue.Select do
  @moduledoc """
  """

  defmodule Default do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.Select,
      catalogue: SurfacePolaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <Select label="myFieldID" />
      """
    end
  end

  defmodule HideLabel do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.Select,
      catalogue: SurfacePolaris.Catalogue,
      title: "Hidden Label",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <Select label="myFieldID" label_hidden />
      """
    end
  end

  defmodule WithError do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.Select,
      catalogue: SurfacePolaris.Catalogue,
      title: "With Error",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <Select label="myFieldID" error="Store name is required" />
      """
    end
  end
end
