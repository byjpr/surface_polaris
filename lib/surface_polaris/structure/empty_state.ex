defmodule SurfacePolaris.EmptyState do
  @moduledoc """
  Empty states are used when a list, table, or chart has no items or data to show. This is an opportunity to provide explanation or guidance to help merchants progress. The empty state component is intended for use when a full page in the admin is empty, and not for individual elements or areas in the interface.
  """
  use Surface.Component

  @doc "Primary action for empty state"
  prop(action, :list)

  @doc "Secondary elements to display below empty state actions"
  prop(footerContent, :string)

  @doc "Whether or not the content should span the full width of its container"
  prop(fullWidth, :boolean, default: false)

  @doc "The empty state heading"
  prop(heading, :string)

  @doc "The path to the image to display. The image should have ~40px of white space above when empty state is used within a card, modal, or navigation component"
  prop(image, :string, required: true)

  @doc "Whether or not to limit the image to the size of its container on large screens"
  prop(imageContained, :boolean, default: false)

  @doc "The path to the image to display on large screens"
  prop(largeImage, :string)

  @doc "Secondary action for empty state"
  prop(secondaryAction, :list)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-EmptyState">
      <#slot />
    </div>
    """
  end
end
