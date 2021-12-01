defmodule SurfacePolaris.Catalogue.Heading do
  @moduledoc """
  """

  defmodule H1 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Heading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h1",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Heading element="h1">Heading h1</Heading>
      """
    end
  end

  defmodule H2 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Heading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h2",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Heading element="h2">Heading h2</Heading>
      """
    end
  end

  defmodule H3 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Heading,
      catalogue: SurfacePolaris.Catalogue,
      title: "H3",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Heading element="h3">Heading h3</Heading>
      """
    end
  end

  defmodule H4 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Heading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h4",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Heading element="h4">Heading h4</Heading>
      """
    end
  end

  defmodule H5 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Heading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h5",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Heading element="h5">Heading h5</Heading>
      """
    end
  end

  defmodule P do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Heading,
      catalogue: SurfacePolaris.Catalogue,
      title: "p",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Heading element="p">Heading P</Heading>
      """
    end
  end
end
