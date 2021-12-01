defmodule SurfacePolaris.Catalogue.Subheading do
  @moduledoc """
  """

  defmodule H1 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Subheading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h1",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Subheading element="h1">Heading h1</Subheading>
      """
    end
  end

  defmodule H2 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Subheading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h2",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Subheading element="h2">Heading h2</Subheading>
      """
    end
  end

  defmodule H3 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Subheading,
      catalogue: SurfacePolaris.Catalogue,
      title: "H3",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Subheading element="h3">Heading h3</Subheading>
      """
    end
  end

  defmodule H4 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Subheading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h4",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Subheading element="h4">Heading h4</Subheading>
      """
    end
  end

  defmodule H5 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Subheading,
      catalogue: SurfacePolaris.Catalogue,
      title: "h5",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Subheading element="h5">Heading h5</Subheading>
      """
    end
  end

  defmodule P do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.TitlesText.Subheading,
      catalogue: SurfacePolaris.Catalogue,
      title: "p",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Subheading element="p">Heading P</Subheading>
      """
    end
  end
end
