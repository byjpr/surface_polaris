defmodule SurfacePolaris.Card do
  @moduledoc """
  Cards are used to group similar concepts and tasks together to make Shopify easier for merchants to scan, read, and get things done.
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  prop(sectioned, :boolean)
  prop(subdued, :boolean)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Card">
      <SurfacePolaris.Card.Header :if={@title} title={@title} />

      <!-- Default slot -->
      <SurfacePolaris.Card.Section :if={@sectioned}>
        <#slot />
      </SurfacePolaris.Card.Section>

      <!-- Non sectioned slot -->
      <#slot :if={!@sectioned} />
    </div>
    """
  end
end
