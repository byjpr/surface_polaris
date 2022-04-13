defmodule Polaris.Popover do
  @moduledoc """
  """

  use Surface.Component

  prop(activator, :any, required: true)

  slot(default)

  def render(assigns) do
    ~F"""
    <div x-data="{ open: false }" style="position:relative">
      <div @click="open = !open">
        {@activator}
      </div>

      <div x-show.transition="open" x-transition @click.away="open = false" style="display: none;">
        <div class="Polaris-PositionedOverlay Polaris-Popover__PopoverOverlay Polaris-Popover__PopoverOverlay--open" style="left: -0.7rem;">
          <div class="Polaris-Popover">
            <div class="Polaris-Popover__Wrapper">
              <div id="Polarispopover4" tabindex="-1" class="Polaris-Popover__Content">
                <#slot />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
