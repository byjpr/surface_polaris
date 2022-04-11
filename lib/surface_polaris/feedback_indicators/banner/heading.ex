defmodule SurfacePolaris.Feedback.Banner.Heading do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Heading"]}><#slot /></div>
    """
  end
end
