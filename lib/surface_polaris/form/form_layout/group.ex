defmodule SurfacePolaris.FormLayout.Group do
  @moduledoc """
  Use field groups to arrange multiple fields in a row.

  Works best for familiar layouts such as a row of city,
  state, and zip code fields. Use caution when arranging
  unrelated fields next to each other as this makes
  fields easier to miss.

  Field groups will wrap automatically on smaller screens.
  """

  use Surface.Component

  prop(condensed, :boolean, default: false)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={
      "Polaris-FormLayout--condensed": @condensed == true,
      "Polaris-FormLayout--grouped": @condensed == false
    }>
      <div class="Polaris-FormLayout__Items">
        <#slot />
      </div>
    </div>
    """
  end
end
