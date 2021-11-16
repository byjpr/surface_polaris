defmodule SurfacePolaris.Catalogue.Icon do
  @moduledoc """
  """
  defmodule AbandonedCartMajor do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Icon,
      catalogue: SurfacePolaris.Catalogue,
      title: "Icon",
      height: "70px",
      container: {:div, class: "buttons"}

    def render(assigns) do
      ~F"""
      <Icon source="AbandonedCartMajor"></Icon>
      """
    end
  end

  defmodule AbandonedCartMajorBackdrop do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Icon,
      catalogue: SurfacePolaris.Catalogue,
      title: "Icon with Backdrop",
      height: "70px",
      container: {:div, class: "buttons"}

    def render(assigns) do
      ~F"""
      <Icon source="AbandonedCartMajor" backdrop={true}></Icon>
      """
    end
  end

  defmodule AbandonedCartMajorCritical do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Icon,
      catalogue: SurfacePolaris.Catalogue,
      title: "Icon Critical",
      height: "70px",
      container: {:div, class: "buttons"}

    def render(assigns) do
      ~F"""
      <Icon source="AbandonedCartMajor" color="critical"></Icon>
      """
    end
  end
end
