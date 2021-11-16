defmodule SurfacePolaris.Caption do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component

  slot default

  def render(assigns) do
    ~F"""
    <p class="Polaris-Caption"><#slot/></p>
    """
  end
end
