defmodule SurfacePolaris.Catalogue.Icon do
  @moduledoc """
  """
  defmodule AbandonedCartMajor do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.ImagesIcons.Icon,
      catalogue: SurfacePolaris.Catalogue,
      title: "Icon",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Icon source="AbandonedCartMajor" />
      """
    end
  end

  defmodule AbandonedCartMajorBackdrop do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.ImagesIcons.Icon,
      catalogue: SurfacePolaris.Catalogue,
      title: "Icon with Backdrop",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Icon source="AbandonedCartMajor" backdrop />
      """
    end
  end

  defmodule AbandonedCartMajorCritical do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.ImagesIcons.Icon,
      catalogue: SurfacePolaris.Catalogue,
      title: "Icon Critical",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Icon source="AbandonedCartMajor" color="critical" />
      """
    end
  end
end
