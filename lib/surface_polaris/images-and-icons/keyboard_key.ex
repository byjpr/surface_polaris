defmodule SurfacePolaris.ImagesIcons.KeyboardKey do
  @moduledoc """
  Keyboard key is used to educate merchants about keyboard shortcuts.
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <kbd class="Polaris-KeyboardKey"><#slot /></kbd>
    """
  end
end
