defmodule SurfacePolaris.Form.TextField do
  @moduledoc """
  A text field is an input field that merchants can type into.
  It has a range of options and supports several text formats including numbers.
  """

  use Surface.Component

  @doc "Determine type of input"
  prop(type, :string,
    values: [
      "text",
      "email",
      "number",
      "password",
      "search",
      "tel",
      "url",
      "date",
      "datetime-local",
      "month",
      "time",
      "week",
      "currency"
    ],
    default: "text"
  )

  @doc "Determines the alignment of the text in the input"
  prop(alignment, :string,
    values: [
      "default",
      "left",
      "center",
      "right"
    ],
    default: "default"
  )

  @doc "Choose the keyboard that should be used on mobile devices"
  prop(input_mode, :string,
    values: [
      "none",
      "text",
      "decimal",
      "numeric",
      "tel",
      "search",
      "email",
      "url"
    ],
    default: "text"
  )

  @doc "Error to display beneath the label"
  prop(error, :string, default: "")

  @doc "Label for the input"
  prop(label, :string, required: true)

  @doc "Visually hide the label"
  prop(label_hidden, :boolean, default: false)

  @doc "Visual required indicator, adds an asterisk to label"
  prop(required_indicator, :boolean, default: false)

  @doc "Disable the input"
  prop(disabled, :boolean, default: false)

  @doc "Initial value for the input"
  prop(value, :string)

  def align_class(input), do: "Polaris-TextField__Input--align#{input}"

  def render(assigns) do
    unless assigns[:label] || Keyword.get(assigns.opts, :label) do
      raise ArgumentError,
            "<Form.TextField /> requires each field have `label` set. Each field needs a unique id, and we use the label to generate the UID. If you don't want to display this in your UI you can set `labelHidden` to `true`"
    end

    ~F"""
    <div class={"Polaris-Labelled--hidden": @label_hidden}>
      <div class="Polaris-Labelled__LabelWrapper">
        <div class="Polaris-Label">
          <label id="PolarisTextField4Label" for={id_from_label(@label)} class={"Polaris-Label__Text", "Polaris-Label__RequiredIndicator": @required_indicator}>
            {@label}
          </label>
        </div>
      </div>
      <div class={
        "Polaris-TextField",
        "#{align_class("left")}": @alignment == "left",
        "#{align_class("center")}": @alignment == "center",
        "#{align_class("right")}": @alignment == "right",
        "Polaris-TextField--disabled": @disabled,
        "Polaris-TextField--error": @error && (@error != "")
      }>
        <input
          id={id_from_label(@label)}
          autocomplete="off"
          class="Polaris-TextField__Input"
          aria-labelledby={id_from_label(@label)}
          aria-invalid="false"
          type={"#{@type}"}
          inputmode={"#{@input_mode}"}
          disabled={@disabled}
          value={@value}>
        <div class="Polaris-TextField__Backdrop"></div>
      </div>
      <div class="Polaris-Labelled__Error">
        <SurfacePolaris.Form.InlineError fieldID={id_from_label(@label)} message={@error} />
      </div>
    </div>
    """
  end

  def id_from_label(label) do
    "TextField#{Recase.to_pascal(label)}"
  end
end
