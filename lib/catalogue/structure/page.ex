defmodule Polaris.Catalogue.Page do
  @moduledoc """
  """
  defmodule Basic do
    use Surface.Catalogue.Example,
      subject: Polaris.Page,
      catalogue: Polaris.Catalogue,
      title: "Basic",
      height: "100px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.Link

    def render(assigns) do
      ~F"""
      <Page
        title="Invoice"
        subtitle="Statement period: May 3, 2019 to June 2, 2019">
      </Page>
      """
    end
  end

  defmodule Breadcrumbs do
    use Surface.Catalogue.Example,
      subject: Polaris.Page,
      catalogue: Polaris.Catalogue,
      title: "Breadcrumbs",
      height: "100px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.Link

    def render(assigns) do
      ~F"""
      <Page
        breadcrumbs={[%{content: "Overview", url: "/"}]}
        title="Invoice"
        subtitle="Statement period: May 3, 2019 to June 2, 2019">
      </Page>
      """
    end
  end

  defmodule Title do
    use Surface.Catalogue.Example,
      subject: Polaris.Page,
      catalogue: Polaris.Catalogue,
      title: "Title only",
      height: "100px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.Link

    def render(assigns) do
      ~F"""
      <Page
        title="Invoice">
      </Page>
      """
    end
  end
end
