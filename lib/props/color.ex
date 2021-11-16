defmodule SurfacePolaris.ColorProp do
  @moduledoc false
  defmacro __using__(component_doc_name) do
    component_doc_name =
      if component_doc_name != [] do
        component_doc_name
      else
        Module.split(__CALLER__.module) |> List.last() |> String.downcase()
      end

    quote do
      @doc "The color of the #{unquote(component_doc_name)}."
      prop color, :string,
        default: "base",
        values: ~w(base subdued critical interactive warning highlight success primary)
    end
  end
end
