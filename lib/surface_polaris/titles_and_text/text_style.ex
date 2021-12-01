defmodule SurfacePolaris.TitlesText.TextStyle do
  @moduledoc """
  Text style enhances text with additional visual meaning.
  For example, using subdued text to de-emphasize it from its surrounding text.
  """

  use Surface.Component

  @doc "Give text additional visual meaning"
  prop(variation, :string,
    values: ["positive", "negative", "strong", "subdued", "code"],
    default: "subdued"
  )

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={"Polaris-TextStyle--variation#{SPString.upcase_first(@variation)}"}>
      <#slot />
    </div>
    """
  end
end
