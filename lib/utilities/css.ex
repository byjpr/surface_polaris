defmodule SPCSS do
  def module_name(module, name), do: "#{module}--#{name}"
  def variation_name(module, name, value), do: "#{module_name(module, name)}#{SPString.upcase_first(value)}"
end
