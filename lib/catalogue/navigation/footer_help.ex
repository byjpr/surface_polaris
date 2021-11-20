defmodule SurfacePolaris.Catalogue.FooterHelp do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Navigation.FooterHelp,
      catalogue: SurfacePolaris.Catalogue,
      title: "Label",
      height: "140px",
      container: {:div, class: "temporary-workaround"}

    alias SurfacePolaris.Navigation.Link

    def render(assigns) do
      ~F"""
      <FooterHelp>
        Learn more about
        <Link external url="https://help.shopify.com/manual/orders/fulfill-orders">
          fulfilling orders
        </Link>
      </FooterHelp>
      """
    end
  end
end
