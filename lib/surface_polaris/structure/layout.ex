defmodule SurfacePolaris.Structure.Layout do
  @moduledoc """
  The layout component is used to create the main layout on a page.
  Layouts sections come in three main configurations: one-column, two-column, and annotated.
  One and two column layouts can be combined in the same page.
  Annotated layouts should be used on their own and only on settings pages.
  """
  use Surface.Component

  @doc "Automatically adds sections to layout"
  prop(sectioned, :boolean, default: false)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Layout"]}>
      <#slot />
    </div>
    """
  end
end
