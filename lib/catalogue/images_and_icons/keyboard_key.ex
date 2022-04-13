defmodule Polaris.Catalogue.KeyboardKey do
  @moduledoc """
  """
  defmodule Default do
    use Surface.Catalogue.Example,
      subject: Polaris.KeyboardKey,
      catalogue: Polaris.Catalogue,
      title: "KeyboardKey",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <KeyboardKey>cmd+s</KeyboardKey>
      """
    end
  end
end
