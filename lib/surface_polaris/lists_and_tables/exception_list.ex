defmodule SurfacePolaris.ListTables.ExceptionList do
  @moduledoc """
  Caption text size is smaller than the recommended size for general reading.
  On web, it should be used only in a graph or as a timestamp for a list item.
  On Android and iOS, it can also be used as help text or as other kinds of secondary text for list items.
  """

  use Surface.Component

  @doc "Text displayed beside the icon"
  prop(items, :list)

  slot(default)

  def render(assigns) do
    ~F"""
    <ul class="Polaris-ExceptionList"><#slot /></ul>
    """
  end
end
