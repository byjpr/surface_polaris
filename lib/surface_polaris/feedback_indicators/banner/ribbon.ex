defmodule SurfacePolaris.Banner.Ribbon do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Ribbon"]}>
      <SurfacePolaris.Icon source="CircleInformationMajor" />
    </div>
    """
  end
end
