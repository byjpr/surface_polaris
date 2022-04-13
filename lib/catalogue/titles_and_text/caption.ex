defmodule Polaris.Catalogue.Caption do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: Polaris.Caption,
    catalogue: Polaris.Catalogue,
    title: "Default caption",
    height: "90px",
    container: {:div, class: "temporary-workaround"}

  def render(assigns) do
    ~F"""
    <Caption>Received April 21, 2017</Caption>
    """
  end
end
