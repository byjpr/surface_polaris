defmodule SurfacePolaris.Catalogue.SettingToggle do
  @moduledoc false
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Actions.SettingToggle,
      catalogue: SurfacePolaris.Catalogue,
      title: "Basic SettingToggle",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    @moduledoc false

    def render(assigns) do
      ~F"""
      <SettingToggle />
      """
    end
  end
end
