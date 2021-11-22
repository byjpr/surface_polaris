defmodule SurfacePolaris.TitlesText.TextContainer do
  @moduledoc """
  A text container is used to wrap text elements such
  as paragraphs, headings, and lists to give them vertical spacing.
  """

  use Surface.Component

  @doc "Size of the subtitle"
  prop(spacing, :string, values: ["tight", "loose"])

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-TextContainer">
      <#slot />
    </div>
    """
  end
end
