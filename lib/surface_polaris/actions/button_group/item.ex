defmodule SurfacePolaris.Actions.ButtonGroup.Item do
  @moduledoc false

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-ButtonGroup__Item"]}>
      <#slot />
    </div>
    """
  end
end