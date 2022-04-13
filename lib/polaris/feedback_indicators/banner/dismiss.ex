defmodule Polaris.Banner.Dismiss do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Dismiss"]}>
      <Polaris.Button plain>
        <Polaris.Icon source="CancelSmallMinor" />
      </Polaris.Button>
    </div>
    """
  end
end
