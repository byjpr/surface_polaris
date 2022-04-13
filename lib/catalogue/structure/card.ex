defmodule Polaris.Catalogue.Card do
  @moduledoc """
  """
  defmodule BasicCard do
    use Surface.Catalogue.Example,
      subject: Polaris.Card,
      catalogue: Polaris.Catalogue,
      title: "Default card",
      height: "130px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Card title="Online store dashboard" sectioned>
        <p>View a summary of your online store’s performance.</p>
      </Card>
      """
    end
  end

  defmodule CardSectioned do
    use Surface.Catalogue.Example,
      subject: Polaris.Card,
      catalogue: Polaris.Catalogue,
      title: "Card with multiple sections",
      height: "200px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Card title="Online store dashboard">
        <Card.Section>
          <p>View a summary of your online store’s performance.</p>
        </Card.Section>
        <Card.Section>
          <p>
            View a summary of your online store’s performance, including sales,
            visitors, top products, and referrals.
          </p>
        </Card.Section>
      </Card>
      """
    end
  end

  defmodule CardTitleSectioned do
    use Surface.Catalogue.Example,
      subject: Polaris.Card,
      catalogue: Polaris.Catalogue,
      title: "Card with multiple titled sections",
      height: "250px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Card title="Online store dashboard">
        <Card.Section title="Reports">
          <p>View a summary of your online store’s performance.</p>
        </Card.Section>

        <Card.Section title="Summary">
          <p>
            View a summary of your online store’s performance, including sales,
            visitors, top products, and referrals.
          </p>
        </Card.Section>
      </Card>
      """
    end
  end

  defmodule CardSubsection do
    use Surface.Catalogue.Example,
      subject: Polaris.Card,
      catalogue: Polaris.Catalogue,
      title: "Card with subsection",
      height: "450px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Card title="Customer">
        <Card.Section>
          <p>John Smith</p>
        </Card.Section>
        <Card.Section title="Addresses">
          <Card.Subsection>
            123 First St
            <br>
            Somewhere
            <br>
            The Universe
          </Card.Subsection>
          <Card.Subsection>
            123 Second St
            <br>
            Somewhere
            <br>
            The Universe
          </Card.Subsection>
        </Card.Section>
        <Card.Section>
          <Card.Subsection>
            A single subsection without a sibling has no visual appearance
          </Card.Subsection>
        </Card.Section>
      </Card>
      """
    end
  end
end
