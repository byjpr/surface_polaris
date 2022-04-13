defmodule Polaris.Card.Header do
  @moduledoc """
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__Header">
      <Polaris.Heading element="h2">
        {@title}
      </Polaris.Heading>
    </div>
    """
  end
end
