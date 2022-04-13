defmodule Polaris.Popover.Pane do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Popover__Pane">
      <#slot />
    </div>
    """
  end
end
