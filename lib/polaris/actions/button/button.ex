defmodule Polaris.Button.Button do
  @moduledoc """
  """

  use Surface.Component
  alias Polaris.Spinner

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

  use Polaris.ColorProp

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

  defp css_module_name(name), do: SPCSS.module_name(@module_name, name)
  defp css_variation_name(name, value), do: SPCSS.variation_name(@module_name, name, value)

  def render(assigns) do
    ~F"""
    <button
      type={@type}
      aria-label={@accessibilityLabel}
      :on-click={@click}
      disabled={(@disabled || @loading)}
      class={@class ++
        [
          "Polaris-Button": !@action_list,
          "Polaris-ActionList__Item": @action_list,
          "#{css_module_name("disabled")}": @disabled,
          "#{css_module_name("destructive")}": @destructive,
          "#{css_module_name("fullWidth")}": @fullWidth,
          "#{css_module_name("monochrome")}": @monochrome,
          "#{css_module_name("outline")}": @outline,
          "#{css_module_name("plain")}": @plain,
          "#{css_module_name("primary")}": @primary,
          "#{css_module_name("removeUnderline")}": @removeUnderline,
          "Polaris-Button--disabled": @loading,
          "Polaris-Button--loading": @loading,
          "#{css_variation_name("textAlign", "left")}": @textAlign == "left",
          "#{css_variation_name("textAlign", "center")}": @textAlign == "center",
          "#{css_variation_name("textAlign", "right")}": @textAlign == "right",
          "#{css_variation_name("size", "slim")}": @size == "slim",
          "#{css_variation_name("size", "medium")}": @size == "medium",
          "#{css_variation_name("size", "large")}": @size == "large"
        ]}
      {...@opts}
      type="button"
    >
      <span class={["Polaris-Button__Content": !@action_list, "Polaris-ActionList__Content": @action_list]}>
        <span :if={@loading} class="Polaris-Button__Spinner">
          <Spinner size="small" />
        </span>
        <span class={["Polaris-Button__Text": !@action_list, "Polaris-ActionList__Text": @action_list]}>
          <#slot>{@label}</#slot>
        </span>
      </span>
    </button>
    """
  end
end
