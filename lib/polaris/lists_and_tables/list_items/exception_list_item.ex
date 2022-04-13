defmodule Polaris.ExceptionList.Item do
  @moduledoc """
  Caption text size is smaller than the recommended size for general reading.
  On web, it should be used only in a graph or as a timestamp for a list item.
  On Android and iOS, it can also be used as help text or as other kinds of secondary text for list items.
  """

  use Surface.Component

  @doc "Icon displayed by the list item"
  prop(icon, :string)

  @doc "Text displayed for the item"
  prop(description, :string, required: true)

  @doc "Set the color of the icon and title for the given item"
  prop(status, :string, values: ["critical", "warning"])

  @doc "Text displayed beside the icon"
  prop(title, :string)

  @doc "Should the description be truncated at end of line"
  prop(truncate, :boolean, default: false)

  slot(default)

  def render(assigns) do
    ~F"""
    <li class={
      "Polaris-ExceptionList__Item",
      "Polaris-ExceptionList--statusCritical": @status == "critical",
      "Polaris-ExceptionList--statusWarning": @status == "warning"
    }>
      <span class="Polaris-ExceptionList__Icon" :if={@icon}><Polaris.Icon source={@icon} /></span>
      <span class="Polaris-ExceptionList__Title" :if={@title}>{@title}</span>
      <span class="Polaris-ExceptionList__Description">{@description}</span>
    </li>
    """
  end
end
