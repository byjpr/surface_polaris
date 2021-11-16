defmodule SurfacePolaris.KeyboardKey do
    @moduledoc """
    `<hX>` elements of subtitle type
    """

    use Surface.Component

    slot default

    def render(assigns) do
      ~F"""
      <kbd class="Polaris-KeyboardKey"><#slot/></kbd>
      """
    end
  end
