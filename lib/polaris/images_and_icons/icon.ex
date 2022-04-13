defmodule Polaris.Icon do
  @moduledoc """
  Icons are used to visually communicate core parts of the
  product and available actions. They can act as wayfinding
  tools to help merchants more easily understand where they
  are in the product, and common interaction patterns that are available.
  """

  use Surface.Component

  @doc "Show a backdrop behind the icon."
  prop(backdrop, :boolean, default: false)

  use Polaris.ColorProp

  @doc "The SVG contents to display in the icon (icons should fit in a 20 × 20 pixel viewBox)."
  prop(source, :string, default: "ImageMajor")

  def render(assigns) do
    ~F"""
    <span class={
      "Polaris-Icon",
      "Polaris-Icon--hasBackdrop": @backdrop,
      "Polaris-Icon--color#{String.capitalize(@color)} Polaris-Icon--applyColor": @color
    }>
      {apply(PolarisIcon, atomify_name(@source), [])}
    </span>
    """
  end

  defp atomify_name(source) do
    source |> Macro.underscore() |> String.to_atom()
  end
end
