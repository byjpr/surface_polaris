defmodule SurfacePolaris.VisuallyHidden do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component

  slot default

  def render(assigns) do
    ~F"""
    <span class="Polaris-VisuallyHidden"><#slot/></span>
    """
  end
end
