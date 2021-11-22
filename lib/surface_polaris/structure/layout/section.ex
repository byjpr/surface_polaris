defmodule SurfacePolaris.Structure.Layout.Section do
  use Surface.Component

  @doc "Automatically adds sections to layout"
  prop(secondary, :boolean, default: false)
  @doc "Automatically adds sections to layout"
  prop(fullWidth, :boolean, default: false)
  @doc "Automatically adds sections to layout"
  prop(oneHalf, :boolean, default: false)
  @doc "Automatically adds sections to layout"
  prop(oneThird, :boolean, default: false)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Layout__Section"]}>
      <#slot />
    </div>
    """
  end
end
