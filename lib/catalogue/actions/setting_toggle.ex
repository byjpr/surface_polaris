defmodule SurfacePolaris.Catalogue.SettingToggle do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.SettingToggle,
      catalogue: SurfacePolaris.Catalogue,
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
