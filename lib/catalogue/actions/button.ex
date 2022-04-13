defmodule Polaris.Catalogue.Button do
  @moduledoc """
  """
  defmodule BasicButton do
    use Surface.Catalogue.Example,
      subject: Polaris.Button,
      catalogue: Polaris.Catalogue,
      title: "Basic button",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Button>Add product</Button>
      """
    end
  end

  defmodule OutlineButton do
    use Surface.Catalogue.Example,
      subject: Polaris.Button,
      catalogue: Polaris.Catalogue,
      title: "Outline button",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Button outline>Add product</Button>
      """
    end
  end

  defmodule PlainButton do
    use Surface.Catalogue.Example,
      subject: Polaris.Button,
      catalogue: Polaris.Catalogue,
      title: "Plain button",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Button plain>View shipping settings</Button>
      """
    end
  end

  defmodule PrimaryButton do
    use Surface.Catalogue.Example,
      subject: Polaris.Button,
      catalogue: Polaris.Catalogue,
      title: "Primary button",
      height: "90px",
      container: {:div, class: "temporary-workaround"}

    def render(assigns) do
      ~F"""
      <Button primary>Save theme</Button>
      """
    end
  end
end
