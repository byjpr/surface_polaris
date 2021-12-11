defmodule SurfacePolaris.ListTables.OptionList do
  @moduledoc """
  The option list component lets you create a list of grouped items that merchants can pick from. This can include single selection or multiple selection of options. Option list usually appears in a popover, and sometimes in a modal or a sidebar. Option lists are styled differently than choice lists and should not be used within a form, but as a standalone menu.
  """

  use Surface.Component

  @doc "Text displayed beside the icon"
  prop(items, :list)

  slot(default)

  def render(assigns) do
    ~F"""
    <ul class="Polaris-OptionList">
      <p class="Polaris-OptionList__Title">Inventory Location</p>
      <#slot />
    </ul>
    """
  end
end
