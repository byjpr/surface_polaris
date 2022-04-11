defmodule SurfacePolaris.Structure.Card.Header do
  @moduledoc """
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__Header">
      <SurfacePolaris.TitlesText.Heading element="h2">
        {@title}
      </SurfacePolaris.TitlesText.Heading>
    </div>
    """
  end
end
