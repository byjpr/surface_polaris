defmodule SurfacePolaris.TextStyle do
  @moduledoc """
  Text style enhances text with additional visual meaning. For example, using subdued text to de-emphasize it from its surrounding text.
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={"Polaris-TextStyle--variation#{SPString.upcase_first(@size)}"}>
      <#slot/>
    </div>
    """
  end
end
