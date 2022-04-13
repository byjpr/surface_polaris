defmodule Polaris.Card.Subsection do
  @moduledoc """
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  slot(default)

  @spec render(any) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__Subsection">
      <#slot />
    </div>
    """
  end
end
