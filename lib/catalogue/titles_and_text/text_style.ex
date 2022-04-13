defmodule Polaris.Catalogue.TextStyle do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: Polaris.TextStyle,
    catalogue: Polaris.Catalogue,
    title: "Extra large",
    height: "120px",
    container: {:div, class: "temporary-workaround"}

  def render(assigns) do
    ~F"""
    <TextStyle variation="subdued">No supplier listed</TextStyle>
    """
  end
end
