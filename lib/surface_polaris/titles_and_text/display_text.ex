defmodule SurfacePolaris.DisplayText do
  @moduledoc """
  Display styles make a bold visual statement.
  Use them to create impact when the main goal is visual storytelling.
  For example, use display text to convince or reassure merchants
  such as in marketing content or to capture attention during onboarding.
  """

  use Surface.Component

  @doc "Size of the subtitle"
  prop(element, :string, default: "p", values: ["h1", "h2", "h3", "h4", "h5", "h6", "p"])

  @doc "Size of the subtitle"
  prop(size, :string, default: "medium", values: ["small", "medium", "large", "extraLarge"])

  slot(default)

  def render(assigns) do
    ~F"""
    <h1 :if={@element == "h1"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot /></h1>
    <h2 :if={@element == "h2"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot /></h2>
    <h3 :if={@element == "h3"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot /></h3>
    <h4 :if={@element == "h4"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot /></h4>
    <h5 :if={@element == "h5"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot /></h5>
    <h6 :if={@element == "h6"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot /></h6>
    <p :if={@element == "p"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot /></p>
    """
  end
end
