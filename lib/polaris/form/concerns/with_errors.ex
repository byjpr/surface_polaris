defmodule Polaris.WithErrors do
  @moduledoc """
  A text field is an input field that merchants can type into.
  It has a range of options and supports several text formats including numbers.
  """

  use Surface.Component

  defmacro __using__(component_doc_name) do
    quote do
      @doc "Error to display beneath the label"
      prop(error, :string)
    end
  end
end
