defmodule Polaris.Card.Section.Header do
  @moduledoc """
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__SectionHeader">
      <Polaris.Subheading element="h3">
        {@title}
      </Polaris.Subheading>
    </div>
    """
  end
end
