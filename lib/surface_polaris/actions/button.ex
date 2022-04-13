defmodule SurfacePolaris.Button do
  @moduledoc """
  Buttons are used primarily for actions,
  such as “Add”, “Close”, “Cancel”, or “Save”.
  Plain buttons, which look similar to links, are used
  for less important or less commonly used actions, such as “view shipping settings”.
  """

  use Surface.Component
  alias SurfacePolaris.Feedback.Spinner

  @module_name "Polaris-Button"

  @doc """
  The button type, defaults to "button", mainly used for instances like modal X to close style buttons
  where you don't want to set a type at all. Setting to nil makes button have no type.
  """
  prop(type, :string, default: "button")

  @doc "The label of the button, when no content (default slot) is provided"
  prop(label, :string)

  @doc "The aria label for the button"
  prop(accessibilityLabel, :string)

  use SurfacePolaris.ColorProp

  @doc "Done: The vertical size of button"
  prop(size, :string, values: ~w(slim medium large))

  @doc "Done: Indicates a dangerous or potentially negative action"
  prop(destructive, :boolean, default: false)

  @doc "Done: Disables the button, disallowing merchant interaction"
  prop(disabled, :boolean, default: false)

  @doc "Forces url to open in a new tab"
  prop(external, :boolean, default: false)

  @doc "Done: Allows the button to grow to the width of its container"
  prop(fullWidth, :boolean, default: false)

  @doc "Replaces button text with a spinner while a background action is being performed"
  prop(loading, :boolean, default: false)

  @doc "Done: Makes `plain` and `outline` Button colors (text, borders, icons) the same as the current text color. Also adds an underline to `plain` Buttons"
  prop(monochrome, :boolean, default: false)

  @doc "Done: Gives the button a subtle alternative to the default button styling, appropriate for certain backdrops"
  prop(outline, :boolean, default: false)

  @doc "Done: Renders a button that looks like a link"
  prop(plain, :boolean, default: false)

  @doc "Done: Provides extra visual weight and identifies the primary action in a set of buttons"
  prop(primary, :boolean, default: false)

  @doc "Done: Removes underline from button text (including on interaction) when `monochrome` and `plain` are true"
  prop(removeUnderline, :boolean, default: false)

  @doc "Allows the button to submit a form"
  prop(submit, :boolean, default: false)

  @doc "Done: Changes the inner text alignment of the button"
  prop(textAlign, :string, values: ~w(false left right center), default: false)

  @doc "A destination to link to, rendered in the href attribute of a link"
  prop(url, :string, default: false)

  @doc "Callback when clicked"
  prop(click, :event)

  @doc "Css classes to propagate down to button. Default class if no class supplied is simply _button_"
  prop(class, :css_class, default: [])

  @doc """
  Additional attributes to add onto the generated element
  """
  prop(opts, :keyword, default: [])

  prop(action_list, :boolean, default: false)

  @doc """
  The content of the generated `<button>` element. If no content is provided,
  the value of property `label` is used instead.
  """
  slot(default)

  def render(assigns) do
    ~F"""
    {#if @url}
      <SurfacePolaris.Button.Link
        {=@type}
        {=@label}
        {=@color}
        {=@size}
        {=@destructive}
        {=@disabled}
        {=@external}
        {=@fullWidth}
        {=@loading}
        {=@monochrome}
        {=@outline}
        {=@plain}
        {=@primary}
        {=@removeUnderline}
        {=@textAlign}
        {=@url}
        {=@click}
        {=@class}
        {=@action_list}
        {=@opts}
      >
        <#slot>{@label}</#slot>
      </SurfacePolaris.Button.Link>
    {#else}
      <SurfacePolaris.Button.Button
      {=@type}
      {=@label}
      {=@accessibilityLabel}
      {=@color}
      {=@size}
      {=@destructive}
      {=@disabled}
      {=@external}
      {=@fullWidth}
      {=@loading}
      {=@monochrome}
      {=@outline}
      {=@plain}
      {=@primary}
      {=@removeUnderline}
      {=@submit}
      {=@textAlign}
      {=@url}
      {=@click}
      {=@class}
      {=@action_list}
      {=@opts}
    >
        <#slot>{@label}</#slot>
      </SurfacePolaris.Button.Button>
    {/if}

    """
  end
end
