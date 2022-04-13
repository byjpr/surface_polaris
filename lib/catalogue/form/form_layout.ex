defmodule Polaris.Catalogue.FormLayout do
  @moduledoc """
  """

  defmodule Default do
    use Surface.Catalogue.Example,
      subject: Polaris.FormLayout,
      catalogue: Polaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.{Structure, Form}

    @moduledoc """
    Use to stack form fields vertically, which makes them easier to scan and complete.
    """

    def render(assigns) do
      ~F"""
      <FormLayout>
        <FormLayout.Item>
          <Form.TextField
            label="Product weight"
            type="number"
          />
        </FormLayout.Item>
        <FormLayout.Item>
          <Form.Select
            label="Unit of measure"
            placeholder="Select"
          />
        </FormLayout.Item>
      </FormLayout>
      """
    end
  end

  defmodule CondensedGroup do
    use Surface.Catalogue.Example,
      subject: Polaris.FormLayout,
      catalogue: Polaris.Catalogue,
      title: "Condensed Group",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.{Structure, Form}

    @moduledoc """
    For very short inputs, the width of the inputs may be reduced in order to fit more fields in the row.
    """

    def render(assigns) do
      ~F"""
      <FormLayout>
        <FormLayout.Group condensed>
          <FormLayout.Item>
            <Form.TextField label="Length" />
          </FormLayout.Item>
          <FormLayout.Item>
            <Form.TextField label="Width" />
          </FormLayout.Item>
          <FormLayout.Item>
            <Form.TextField label="Height" />
          </FormLayout.Item>
          <FormLayout.Item>
            <Form.TextField label="Unit" />
          </FormLayout.Item>
        </FormLayout.Group>
      </FormLayout>
      """
    end
  end

  defmodule Group do
    use Surface.Catalogue.Example,
      subject: Polaris.FormLayout,
      catalogue: Polaris.Catalogue,
      title: "Group",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.{Structure, Form}

    @moduledoc """
    """

    def render(assigns) do
      ~F"""
      <FormLayout>
        <FormLayout.Group>
          <FormLayout.Item>
            <Form.TextField label="Length" />
          </FormLayout.Item>
          <FormLayout.Item>
            <Form.TextField label="Width" />
          </FormLayout.Item>
          <FormLayout.Item>
            <Form.TextField label="Height" />
          </FormLayout.Item>
          <FormLayout.Item>
            <Form.TextField label="Unit" />
          </FormLayout.Item>
        </FormLayout.Group>
      </FormLayout>
      """
    end
  end
end
