defmodule SurfacePolaris.Catalogue.Banner do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfacePolaris.Feedback.Banner,
    catalogue: SurfacePolaris.Catalogue,
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
