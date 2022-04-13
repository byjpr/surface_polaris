defmodule Polaris.PageActions do
  @moduledoc """
  Page actions let merchants take key actions at the bottom of specific pages in the interface. This is important because sometimes the primary call to action is hard to access when merchants are at the bottom of a page.
  """
  use Surface.Component

  @doc "The primary action for the page"
  prop(primaryAction, :list)

  @doc "The secondary actions for the page"
  prop(secondaryActions, :list)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-PageActions">
      <#slot />
    </div>
    """
  end
end
