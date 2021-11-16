defmodule SurfacePolaris.Badge do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component

  slot default

  def render(assigns) do
    ~F"""
    <span class="Polaris-Badge"><#slot/></span>
    """
  end
end
