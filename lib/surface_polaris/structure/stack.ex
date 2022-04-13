defmodule SurfacePolaris.Stack do
  @moduledoc """
  Use to lay out a horizontal row of components or to achieve no-fuss vertical centering. A stack is made of flexible items that wrap each of the stack’s children. Options provide control of the wrapping, spacing, and relative size of the items in the stack.
  """

  @module_name "Polaris-Stack"

  use Surface.Component

  @doc "Adjust vertical alignment of elements"
  prop(alignment, :string,
    default: "default",
    values: ~w(default leading trailing center fill baseline)
  )

  @doc "Adjust horizontal alignment of elements"
  prop(distribution, :string,
    default: "default",
    values: ~w(default equalSpacing leading trailing center fill fillEvenly)
  )

  @doc "Adjust spacing between elements"
  prop(spacing, :string,
    default: "default",
    values: ~w(default extraTight tight baseTight loose extraLoose none)
  )

  @doc "Stack the elements vertically"
  prop(vertical, :boolean, default: false)

  @doc "Wrap stack elements to additional rows as needed on small screens (Defaults to true)"
  prop(wrap, :boolean, default: true)

  slot(default)

  defp css_variation_name(name, value), do: SPCSS.variation_name(@module_name, name, value)

  def render(assigns) do
    ~F"""
    <div class={
      "Polaris-Stack",
      "#{css_variation_name("alignment", @alignment)}": @alignment !== "default",
      "#{css_variation_name("distribution", @distribution)}": @distribution !== "default",
      "#{css_variation_name("spacing", @spacing)}": @spacing !== "default",
      "Polaris-Stack--vertical": @vertical,
      "Polaris-Stack--noWrap": !@wrap
    }>
      <#slot />
    </div>
    """
  end
end
