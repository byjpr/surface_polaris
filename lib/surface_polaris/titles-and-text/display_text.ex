defmodule SurfacePolaris.DisplayText do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component

  @doc "Size of the subtitle"
  prop element, :string, default: "p", values: ["h1", "h2", "h3", "h4", "h5", "h6", "p"]

  @doc "Size of the subtitle"
  prop size, :string, default: "medium", values: ["small", "medium", "large", "extraLarge"]

  slot default

  def render(assigns) do
    ~F"""
    <h1 :if={@element == "h1"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot/></h1>
    <h2 :if={@element == "h2"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot/></h2>
    <h3 :if={@element == "h3"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot/></h3>
    <h4 :if={@element == "h4"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot/></h4>
    <h5 :if={@element == "h5"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot/></h5>
    <h6 :if={@element == "h6"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot/></h6>
     <p :if={@element == "p"} class={"Polaris-DisplayText", "Polaris-DisplayText--size#{SPString.upcase_first(@size)}"}><#slot/></p>
    """
  end
end
