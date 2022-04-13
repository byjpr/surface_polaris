defmodule SurfacePolaris.Card.Header do
  @moduledoc """
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__Header">
      <SurfacePolaris.Heading element="h2">
        {@title}
      </SurfacePolaris.Heading>
    </div>
    """
  end
end
