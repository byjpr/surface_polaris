defmodule Polaris.Catalogue.Stack do
  @moduledoc """
  """

  defmodule OneColumn do
    use Surface.Catalogue.Example,
      subject: Polaris.Stack,
      catalogue: Polaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.Heading

    def render(assigns) do
      ~F"""
      <Stack>
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
      </Stack>
      """
    end
  end

  defmodule Spacing do
    use Surface.Catalogue.Example,
      subject: Polaris.Stack,
      catalogue: Polaris.Catalogue,
      title: "Spacing options",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.Heading

    def render(assigns) do
      ~F"""
      <Stack spacing="extraLoose">
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
      </Stack>
      """
    end
  end

  defmodule TwoPrimarySecondary do
    use Surface.Catalogue.Example,
      subject: Polaris.Stack,
      catalogue: Polaris.Catalogue,
      title: "Stack where a single item fills the remaining space",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.Heading

    def render(assigns) do
      ~F"""
      <Stack>
        <Stack.Item fill>
          <Heading>Order #1136</Heading>
        </Stack.Item>
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
        <Stack.Item>
          <Heading>Order #1136</Heading>
        </Stack.Item>
      </Stack>
      """
    end
  end
end
