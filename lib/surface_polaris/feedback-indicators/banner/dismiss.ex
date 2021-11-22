defmodule SurfacePolaris.Feedback.Banner.Dismiss do
  @moduledoc false

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Dismiss"]}>
      <SurfacePolaris.Actions.Button plain>
        <SurfacePolaris.ImagesIcons.Icon source="CancelSmallMinor" />
      </SurfacePolaris.Actions.Button>
    </div>
    """
  end
end
