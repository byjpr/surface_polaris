defmodule SurfacePolaris.Catalogue.TextContainer do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfacePolaris.TextContainer,
    catalogue: SurfacePolaris.Catalogue,
    title: "Extra large",
    height: "120px",
    container: {:div, class: "temporary-workaround"}

  alias SurfacePolaris.Heading

  def render(assigns) do
    ~F"""
    <TextContainer>
      <Heading>Install the Shopify POS App</Heading>
      <p>
        Shopify POS is the easiest way to sell your products in person. Available
        for iPad, iPhone, and Android.
      </p>
    </TextContainer>
    """
  end
end
