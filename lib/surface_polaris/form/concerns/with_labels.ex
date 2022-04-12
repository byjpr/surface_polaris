defmodule SurfacePolaris.Form.WithLabels do
  @moduledoc """
  A text field is an input field that merchants can type into.
  It has a range of options and supports several text formats including numbers.
  """

  use Surface.Component

  defmacro __using__(component_doc_name) do
    component_doc_name =
      if component_doc_name != [] do
        component_doc_name
      else
        Module.split(__CALLER__.module) |> List.last() |> String.downcase()
      end

    quote do
      @doc "Label for the input"
      prop(label, :string, required: true)

      @doc "Visually hide the label"
      prop(label_hidden, :boolean, default: false)

      @doc "Visual required indicator, adds an asterisk to label"
      prop(required_indicator, :boolean, default: false)

      def id_from_label(label) do
        "#{unquote(component_doc_name)}#{Recase.to_pascal(label)}"
      end
    end
  end
end
