defmodule Polaris.Catalogue.DisplayText do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: Polaris.DisplayText,
    catalogue: Polaris.Catalogue,
    title: "Extra large",
    height: "90px",
    container: {:div, class: "temporary-workaround"}

  def render(assigns) do
    ~F"""
    <DisplayText size="extraLarge">Good evening, Dominic.</DisplayText>
    """
  end
end
