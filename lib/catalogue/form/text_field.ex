defmodule SurfacePolaris.Catalogue.TextField do
  @moduledoc """
  """

  defmodule Default do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TextField,
      catalogue: SurfacePolaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <TextField label="Store name" />
      """
    end
  end

  defmodule HideLabel do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TextField,
      catalogue: SurfacePolaris.Catalogue,
      title: "Hidden Label",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <TextField label="Store name" label_hidden />
      """
    end
  end

  defmodule Disabled do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TextField,
      catalogue: SurfacePolaris.Catalogue,
      title: "Disabled",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <TextField label="Store name" disabled />
      """
    end
  end

  defmodule WithError do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TextField,
      catalogue: SurfacePolaris.Catalogue,
      title: "With Error",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias SurfacePolaris.InlineError

    def render(assigns) do
      ~F"""
      <TextField label="Store name" error="Store name is required" />
      """
    end
  end
end
