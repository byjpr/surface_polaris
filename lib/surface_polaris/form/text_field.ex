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

  def align_class(input), do: "Polaris-TextField__Input--align#{input}"

  def render(assigns) do
    ~F"""
    <div class={
      "Polaris-TextField",
      "#{align_class("left")}": @alignment == "left",
      "#{align_class("center")}": @alignment == "center",
      "#{align_class("right")}": @alignment == "right",
    }>
      <input
        id="PolarisTextField2"
        autocomplete="off"
        class="Polaris-TextField__Input"
        aria-labelledby="PolarisTextField2Label"
        aria-invalid="false"
        type={"#{@type}"}
        inputmode={"#{@input_mode}"}
        value="">
      <div class="Polaris-TextField__Backdrop"></div>
    </div>
    """
  end
end
