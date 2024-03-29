defmodule Polaris.Catalogue.Banner do
  @moduledoc """
  """
  defmodule BasicBanner do
    use Surface.Catalogue.Example,
      subject: Polaris.Banner,
      catalogue: Polaris.Catalogue,
      title: "Default banners",
      height: "150px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Banner title="Order archived">
        <p>This order was archived on March 7, 2017 at 3:12pm EDT.</p>
      </Banner>
      """
    end
  end

  defmodule BannerFooterCTA do
    use Surface.Catalogue.Example,
      subject: Polaris.Banner,
      catalogue: Polaris.Catalogue,
      title: "Banner with footer call-to-action",
      height: "250px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Banner
        title="Some of your product variants are missing weights"
        status="warning"
        action={[
          content: "Edit variant weights",
          url: "http://localhost:4000/components/Polaris.Banner/example"
        ]}
        secondaryAction={[
          content: "Edit variant weights",
          url: "http://localhost:4000/components/Polaris.Banner/example"
        ]}
      >
        <p>
          Add weights to show accurate rates at checkout and when buying shipping
          labels in Shopify.
        </p>
      </Banner>
      """
    end
  end
end
