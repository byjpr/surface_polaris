defmodule SurfacePolaris.Catalogue.Tag do
  @moduledoc """
  """

  defmodule Default do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.Tag,
      catalogue: SurfacePolaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    def render(assigns) do
      ~F"""
      <Tag>Example</Tag>
      """
    end
  end

  defmodule Multiple do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.Tag,
      catalogue: SurfacePolaris.Catalogue,
      title: "Multiple tags",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias SurfacePolaris.Structure.Stack

    def render(assigns) do
      ~F"""
      <Stack spacing="tight">
        <Stack.Item>
          <Tag>Rustic</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Antique</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Vinyl</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Refurbished</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Rails</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Ruby</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Gem</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>JWT</Tag>
        </Stack.Item>
        <Stack.Item>
        <Tag>Payload</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Application</Tag>
        </Stack.Item>
        <Stack.Item>
        <Tag>Dispatch</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Database</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Strategy</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Tag</Tag>
        </Stack.Item>
        <Stack.Item>
          <Tag>Stack</Tag>
        </Stack.Item>
      </Stack>
      """
    end
  end
end
