defmodule SurfacePolaris.Banner.Actions do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Actions"]}><#slot /></div>
    """
  end
end
