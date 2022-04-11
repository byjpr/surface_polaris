defmodule SurfacePolaris.Catalogue.InlineError do
  @moduledoc """
  """

  defmodule Default do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.InlineError,
      catalogue: SurfacePolaris.Catalogue,
      title: "Default behavior",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    @moduledoc """
    Use when the merchant has entered information that is not valid into multiple fields inside of a form, or needs to be displayed in a non-standard position in the form layout.
    """

    def render(assigns) do
      ~F"""
      <InlineError fieldID="myFieldID" message="Store name is required" />
      """
    end
  end

  defmodule NoMessage do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.InlineError,
      catalogue: SurfacePolaris.Catalogue,
      title: "No Message",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    @moduledoc """
    When no message is supplied `InlineError` will not render
    """

    def render(assigns) do
      ~F"""
      <InlineError fieldID="myFieldID" />
      """
    end
  end

  defmodule EmptyMessage do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.InlineError,
      catalogue: SurfacePolaris.Catalogue,
      title: "Empty Message",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    @moduledoc """
    When message is supplied as an empty string `InlineError` will not render
    """

    def render(assigns) do
      ~F"""
      <InlineError fieldID="myFieldID" message="" />
      """
    end
  end

  defmodule NoFieldID do
    use Surface.Catalogue.Example,
      subject: SurfacePolaris.Form.InlineError,
      catalogue: SurfacePolaris.Catalogue,
      title: "No `fieldID`",
      height: "140px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    @moduledoc """
    Not supplying `fieldID` will raise an exception. All InlineErrors are related to inputs.
    """

    def render(assigns) do
      ~F"""
      <InlineError />
      """
    end
  end
end
