defmodule SurfacePolaris.TextStyle do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component

  slot default

  def render(assigns) do
    ~F"""
    <div class={"Polaris-TextStyle--variation#{SPString.upcase_first(@size)}"}>
      <#slot/>
    </div>
    """
  end
end
