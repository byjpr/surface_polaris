defmodule SurfacePolaris.Catalogue.FooterHelp do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.FooterHelp,
      catalogue: SurfacePolaris.Catalogue,
      title: "Label",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    alias SurfacePolaris.Link

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
