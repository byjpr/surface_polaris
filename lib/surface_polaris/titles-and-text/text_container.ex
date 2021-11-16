defmodule SurfacePolaris.TextContainer do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component

  @doc "Size of the subtitle"
  prop spacing, :string, values: ["tight", "loose"]

  slot default

  def render(assigns) do
    ~F"""
    <div class="Polaris-TextContainer">
      <#slot/>
    </div>
    """
  end
end
