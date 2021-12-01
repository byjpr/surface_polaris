defmodule SurfacePolaris.Structure.Page.Content do
  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Page__Content">
      <#slot />
    </div>
    """
  end
end
