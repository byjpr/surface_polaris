defmodule Polaris.Banner.Content do
  @moduledoc """
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Banner__Content"]}><#slot /></div>
    """
  end
end
