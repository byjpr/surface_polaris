defmodule SurfacePolaris.Feedback.Banner.ContentWrapper do
  @moduledoc false

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__ContentWrapper"]}><#slot/></div>
    """
  end
end
