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

  defmodule WarningBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "Warning badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge status="warning">SSL unavailable</Badge>
      """
    end
  end

  defmodule CriticalBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "critical badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge status="critical">Not approved</Badge>
      """
    end
  end

  defmodule IncompleteBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "incomplete badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge progress="incomplete">Unfulfilled</Badge>
      """
    end
  end

  defmodule PartiallyCompleteBadge do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Badge,
      catalogue: SurfacePolaris.Catalogue,
      title: "Partially complete badge",
      height: "70px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Badge progress="partiallyComplete">Partially fulfilled</Badge>
      """
    end
  end
end
