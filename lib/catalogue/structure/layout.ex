defmodule SurfacePolaris.Catalogue.Layout do
  @moduledoc """
  """

  defmodule H1 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Structure.Layout,
      catalogue: SurfacePolaris.Catalogue,
      title: "h1",
      height: "190px",
      container: {:div, class: "temporary-workaround"}

    alias SurfacePolaris.Structure.Card

    def render(assigns) do
      ~F"""
      <Layout>
        <Layout.Section>
          <Card title="Online store dashboard" sectioned>
            <p>View a summary of your online store’s performance.</p>
          </Card>
        </Layout.Section>
      </Layout>
      """
    end
  end

  defmodule H2 do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Structure.Layout,
      catalogue: SurfacePolaris.Catalogue,
      title: "h2",
      height: "290px",
      container: {:div, class: "temporary-workaround"}

    alias SurfacePolaris.Structure.Card

    def render(assigns) do
      ~F"""
      <Layout>
        <Layout.Section>
          <Card title="Order details" sectioned>
            <p>View a summary of your order.</p>
          </Card>
        </Layout.Section>
        <Layout.Section secondary>
          <Card title="Tags" sectioned>
            <p>Add tags to your order.</p>
          </Card>
        </Layout.Section>
      </Layout>
      """
    end
  end
end
