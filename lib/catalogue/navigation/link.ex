defmodule Polaris.Catalogue.Link do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: Polaris.Link,
      catalogue: Polaris.Catalogue,
      title: "Label",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Link external url="https://help.shopify.com/manual/orders/fulfill-orders">fulfilling orders</Link>
      """
    end
  end

  defmodule OutlineButton do
    use Surface.Catalogue.Example,
      subject: Polaris.Link,
      catalogue: Polaris.Catalogue,
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
