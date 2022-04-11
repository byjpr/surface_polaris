defmodule SurfacePolaris.Structure.Card.Section.Header do
  @moduledoc """
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__SectionHeader">
      <SurfacePolaris.TitlesText.Subheading element="h3">
        {@title}
      </SurfacePolaris.TitlesText.Subheading>
    </div>
    """
  end
end
