defmodule SurfacePolaris.Structure.Card.Section do
  @moduledoc false

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  slot(default)

  @spec render(any) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~F"""
    <div class={"Polaris-Card__Section"}>
      <SurfacePolaris.Structure.Card.Section.Header :if={@title} title={@title} />
      <#slot/>
    </div>
    """
  end
end
