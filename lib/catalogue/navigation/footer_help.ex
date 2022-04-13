defmodule Polaris.Catalogue.FooterHelp do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: Polaris.FooterHelp,
      catalogue: Polaris.Catalogue,
      title: "Label",
      height: "140px",
      container: {:div, class: "temporary-workaround"}

    alias Polaris.Link

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
