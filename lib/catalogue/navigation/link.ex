defmodule SurfacePolaris.Catalogue.Link do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Navigation.Link,
      catalogue: SurfacePolaris.Catalogue,
      title: "Label",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
        <Link external={true} url="https://help.shopify.com/manual/orders/fulfill-orders">fulfilling orders</Link>
      """
    end
  end

  defmodule OutlineButton do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Navigation.Link,
      catalogue: SurfacePolaris.Catalogue,
      title: "Label",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
        <Link url="https://help.shopify.com/manual/orders/fulfill-orders">fulfilling orders</Link>
      """
    end
  end
end
