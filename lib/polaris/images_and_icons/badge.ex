defmodule Polaris.Badge do
  @moduledoc """
  Badges are used to inform merchants of the status of an object or of an action that’s been taken.
  """

  use Surface.Component

  @module_name "Polaris-Badge"

  @doc "Set the color of the badge for the given status."
  prop(status, :string,
    default: "default",
    values: ~w(default success info attention critical warning new)
  )

  slot(default)

  defp css_variation_name(name, value), do: SPCSS.variation_name(@module_name, name, value)

  def render(assigns) do
    ~F"""
    <span class={["Polaris-Badge"] ++
      [
        "#{css_variation_name("status", "success")}": @status == "success",
        "#{css_variation_name("status", "info")}": @status == "info",
        "#{css_variation_name("status", "attention")}": @status == "attention",
        "#{css_variation_name("status", "critical")}": @status == "critical",
        "#{css_variation_name("status", "warning")}": @status == "warning",
        "#{css_variation_name("status", "new")}": @status == "new"
      ]}><#slot /></span>
    """
  end
end
