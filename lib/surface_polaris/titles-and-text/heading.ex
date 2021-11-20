defmodule SurfacePolaris.TitlesText.Heading do
  @moduledoc """
  Headings are used as the titles of each major section
  of a page in the interface. For example, card components
  generally use headings as their title.
  """

  use Surface.Component

  @doc "Size of the subtitle"
  prop(element, :string, default: "p", values: ["h1", "h2", "h3", "h4", "h5", "h6", "p"])

  slot(default)

  def render(assigns) do
    ~F"""
    <h1 :if={@element == "h1"} class={"Polaris-Heading"}><#slot/></h1>
    <h2 :if={@element == "h2"} class={"Polaris-Heading"}><#slot/></h2>
    <h3 :if={@element == "h3"} class={"Polaris-Heading"}><#slot/></h3>
    <h4 :if={@element == "h4"} class={"Polaris-Heading"}><#slot/></h4>
    <h5 :if={@element == "h5"} class={"Polaris-Heading"}><#slot/></h5>
    <h6 :if={@element == "h6"} class={"Polaris-Heading"}><#slot/></h6>
     <p :if={@element == "p"} class={"Polaris-Heading"}><#slot/></p>
    """
  end
end
