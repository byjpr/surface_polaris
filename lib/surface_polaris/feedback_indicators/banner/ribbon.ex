defmodule SurfacePolaris.Feedback.Banner.Ribbon do
  @moduledoc false

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Ribbon"]}>
      <SurfacePolaris.ImagesIcons.Icon source="CircleInformationMajor" />
    </div>
    """
  end
end
