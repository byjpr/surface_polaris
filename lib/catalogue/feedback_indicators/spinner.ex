defmodule SurfacePolaris.Catalogue.Spinner do
  @moduledoc """
  The classic **button**, in different colors, sizes, and states
  """
  defmodule BasicSpinner do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Spinner,
      catalogue: SurfacePolaris.Catalogue,
      title: "Basic spinner",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Spinner />
      """
    end
  end

  defmodule SmallSpinner do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Spinner,
      catalogue: SurfacePolaris.Catalogue,
      title: "Small spinner",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Spinner size="small" />
      """
    end
  end

  defmodule LargeSpinner do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Spinner,
      catalogue: SurfacePolaris.Catalogue,
      title: "Large spinner",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Spinner size="large" />
      """
    end
  end
end
