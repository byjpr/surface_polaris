defmodule SurfacePolaris.Catalogue.Caption do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfacePolaris.Caption,
    catalogue: SurfacePolaris.Catalogue,
    title: "Default caption",
    height: "90px",
    container: {:div, class: "buttons"}

  def render(assigns) do
    ~F"""
    <Caption>Received April 21, 2017</Caption>
    """
  end
end
