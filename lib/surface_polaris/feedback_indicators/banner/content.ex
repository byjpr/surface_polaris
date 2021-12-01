defmodule SurfacePolaris.Feedback.Banner.Content do
  @moduledoc false

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Content"]}><#slot /></div>
    """
  end
end
