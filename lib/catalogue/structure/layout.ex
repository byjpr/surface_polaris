defmodule SurfacePolaris.Catalogue.Layout do
  @moduledoc """
  """

  defmodule OneColumn do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Structure.Layout,
      catalogue: SurfacePolaris.Catalogue,
      title: "One-column layout",
      height: "190px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

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

  defmodule TwoPrimarySecondary do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Structure.Layout,
      catalogue: SurfacePolaris.Catalogue,
      title: "Two columns with primary and secondary widths",
      height: "190px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

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

  defmodule TwoEqual do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Structure.Layout,
      catalogue: SurfacePolaris.Catalogue,
      title: "Two columns with equal width",
      height: "270px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias SurfacePolaris.Structure.Card
    alias SurfacePolaris.TitlesText.TextStyle

    def render(assigns) do
      ~F"""
      <Layout>
        <Layout.Section oneHalf>
          <Card title="Florida">
            <Card.Section>
              <TextStyle variation="subdued">455 units available</TextStyle>
            </Card.Section>
            <Card.Section title="Items">
              <TextStyle variation="subdued">301 units available</TextStyle>
            </Card.Section>
          </Card>
        </Layout.Section>
        <Layout.Section oneHalf>
          <Card title="Nevada">
            <Card.Section>
              <TextStyle variation="subdued">301 units available</TextStyle>
            </Card.Section>
            <Card.Section title="Items">
              <TextStyle variation="subdued">301 units available</TextStyle>
            </Card.Section>
          </Card>
        </Layout.Section>
      </Layout>
      """
    end
  end

  defmodule ThreeEqual do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Structure.Layout,
      catalogue: SurfacePolaris.Catalogue,
      title: "Three columns with equal width",
      height: "270px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias SurfacePolaris.Structure.Card
    alias SurfacePolaris.TitlesText.TextStyle

    def render(assigns) do
      ~F"""
      <Layout>
        <Layout.Section oneThird>
          <Card title="Florida">
            <Card.Section>
              <TextStyle variation="subdued">455 units available</TextStyle>
            </Card.Section>
            <Card.Section title="Items">
              <TextStyle variation="subdued">1931 units available</TextStyle>
            </Card.Section>
          </Card>
        </Layout.Section>
        <Layout.Section oneThird>
          <Card title="Nevada">
            <Card.Section>
              <TextStyle variation="subdued">301 units available</TextStyle>
            </Card.Section>
            <Card.Section title="Items">
              <TextStyle variation="subdued">1931 units available</TextStyle>
            </Card.Section>
          </Card>
        </Layout.Section>
        <Layout.Section oneThird>
          <Card title="Minneapolis">
            <Card.Section>
              <TextStyle variation="subdued">1931 units available</TextStyle>
            </Card.Section>
            <Card.Section title="Items">
              <TextStyle variation="subdued">1931 units available</TextStyle>
            </Card.Section>
          </Card>
        </Layout.Section>
      </Layout>
      """
    end
  end
end
