defmodule SurfacePolaris.Structure.Stack.Item do
  @moduledoc """
  The stack component will treat multiple elements wrapped in a stack item component as one item. By default, each individual element is treated as one stack item. Use the fill prop on a single stack item component to make it fill the rest of the available horizontal space. See the “Stack where a single item fills the remaining space” example.
  """

  use Surface.Component

  @doc "Fill the available horizontal space in the stack with the item"
  prop(fill, :boolean, default: false)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={"Polaris-Stack__Item", "Polaris-Stack__Item--fill": @fill}>
      <#slot />
    </div>
    """
  end
end
