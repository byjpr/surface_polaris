defmodule Polaris.Catalogue.SettingToggle do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: Polaris.SettingToggle,
      catalogue: Polaris.Catalogue,
      title: "Basic SettingToggle",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    @moduledoc """
    """

    def render(assigns) do
      ~F"""
      <SettingToggle />
      """
    end
  end
end
