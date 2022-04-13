defmodule SurfacePolaris.FormLayout.Item do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-FormLayout__Item">
      <#slot />
    </div>
    """
  end
end
