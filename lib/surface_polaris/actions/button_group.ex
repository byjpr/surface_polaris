defmodule SurfacePolaris.ButtonGroup do
  @moduledoc """
  """

  use Surface.Component
  prop(connectedTop, :boolean, default: false)
  prop(fullWidth, :boolean, default: false)
  prop(segmented, :boolean, default: false)
  prop(spacing, :string, values: ~w(default extraTight tight loose), default: "default")

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={[
      "Polaris-ButtonGroup",
      "Polaris-ButtonGroup--fullWidth": @fullWidth,
      "Polaris-ButtonGroup--segmented": @segmented,
      "Polaris-ButtonGroup--extraTight": @spacing == "extraTight",
      "Polaris-ButtonGroup--tight": @spacing == "tight",
      "Polaris-ButtonGroup--loose": @spacing == "loose"
    ]}>
      <#slot />
    </div>
    """
  end
end
