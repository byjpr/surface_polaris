defmodule Polaris.Pagination do
  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div>
      <#slot />
    </div>
    """
  end
end
