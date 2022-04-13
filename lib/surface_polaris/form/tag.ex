defmodule SurfacePolaris.Tag do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <span class="Polaris-Tag">
      <span class="Polaris-Tag__TagText">
        <#slot />
      </span>
    </span>
    """
  end
end
