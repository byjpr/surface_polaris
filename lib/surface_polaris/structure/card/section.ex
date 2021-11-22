defmodule SurfacePolaris.Structure.Card.Section do
  @moduledoc false

  use Surface.Component
  alias SurfacePolaris.Structure.Card.Section

  @doc "Title content for the card"
  prop(title, :string)

  slot(default)

  @spec render(any) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__Section">
      <Section.Header :if={@title} title={@title} />
      <#slot />
    </div>
    """
  end
end
