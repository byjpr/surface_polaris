defmodule SurfacePolaris.Banner.Dismiss do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Dismiss"]}>
      <SurfacePolaris.Button plain>
        <SurfacePolaris.Icon source="CancelSmallMinor" />
      </SurfacePolaris.Button>
    </div>
    """
  end
end
