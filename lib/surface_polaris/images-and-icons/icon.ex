defmodule SurfacePolaris.Icon do
  @moduledoc """
  A component that displays an icon compatible with Polaris icons
  """

  use Surface.Component

  @doc "Show a backdrop behind the icon."
  prop backdrop, :boolean, default: false

  use SurfacePolaris.ColorProp

  @doc "The SVG contents to display in the icon (icons should fit in a 20 × 20 pixel viewBox)."
  prop source, :string, default: "ImageMajor"

  def render(assigns) do
    ~F"""
    <span class={"Polaris-Icon", "Polaris-Icon--hasBackdrop": @backdrop, "Polaris-Icon--color#{String.capitalize(@color)} Polaris-Icon--applyColor": @color,}>
    	{apply(PolarisIcon, atomify_name(@source), [])}
    </span>
    """
  end

  defp atomify_name(source) do
    source |> Macro.underscore() |> String.to_atom()
  end
end
