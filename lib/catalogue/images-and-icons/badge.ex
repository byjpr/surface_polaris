defmodule SurfacePolaris.Catalogue.Badge do
  @moduledoc """
  """

  defmodule BasicBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "Default badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge>Fulfilled</Badge>
      """
    end
  end

  defmodule InfoBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "Informational badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge status="info">Published</Badge>
      """
    end
  end

  defmodule SuccessBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "Success badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge status="success">Funds recovered</Badge>
      """
    end
  end

  defmodule AttentionBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "Attention badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge status="attention">Unfulfilled</Badge>
      """
    end
  end
end
