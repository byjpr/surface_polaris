defmodule SurfacePolaris.Subheading do
  @moduledoc """
  Subheadings are used for the title of any sub-sections in top-level page sections.
  """

  use Surface.Component

  @doc "Size of the subtitle"
  prop(element, :string, default: "p", values: ["h1", "h2", "h3", "h4", "h5", "h6", "p"])

  slot(default)

  def render(assigns) do
    ~F"""
    <h1 :if={@element == "h1"} class={"Polaris-Subheading"}><#slot/></h1>
    <h2 :if={@element == "h2"} class={"Polaris-Subheading"}><#slot/></h2>
    <h3 :if={@element == "h3"} class={"Polaris-Subheading"}><#slot/></h3>
    <h4 :if={@element == "h4"} class={"Polaris-Subheading"}><#slot/></h4>
    <h5 :if={@element == "h5"} class={"Polaris-Subheading"}><#slot/></h5>
    <h6 :if={@element == "h6"} class={"Polaris-Subheading"}><#slot/></h6>
     <p :if={@element == "p"} class={"Polaris-Subheading"}><#slot/></p>
    """
  end
end
