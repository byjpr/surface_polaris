defmodule SurfacePolaris.Overlays.Popover.Section do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Popover__Section">
      <#slot />
    </div>
    """
  end
end
