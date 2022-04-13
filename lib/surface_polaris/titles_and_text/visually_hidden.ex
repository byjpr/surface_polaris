defmodule SurfacePolaris.VisuallyHidden do
  @moduledoc """
  Use when an element needs to be available to assistive
  technology (for example, a screen reader) but otherwise hidden.
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <span class="Polaris-VisuallyHidden"><#slot /></span>
    """
  end
end
