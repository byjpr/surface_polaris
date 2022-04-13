defmodule Polaris.StatusProp do
  @moduledoc """
  """
  defmacro __using__(component_doc_name) do
    component_doc_name =
      if component_doc_name != [] do
        component_doc_name
      else
        Module.split(__CALLER__.module) |> List.last() |> String.downcase()
      end

    quote do
      @doc "The status of #{unquote(component_doc_name)}."

      prop(status, :string,
        default: "default",
        values: ~w(default success info attention critical warning new)
      )
    end
  end
end
