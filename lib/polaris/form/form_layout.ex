defmodule Polaris.FormLayout do
  @moduledoc """
  Use form layout to arrange fields within a form using
  standard spacing. By default it stacks fields vertically
  but also supports horizontal groups of fields.
  """

  use Surface.Component

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-FormLayout">
      <#slot />
    </div>
    """
  end
end
