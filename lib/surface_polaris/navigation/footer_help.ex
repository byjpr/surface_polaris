defmodule SurfacePolaris.FooterHelp do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component
  alias SurfacePolaris.Icon

  slot default

  def render(assigns) do
    ~F"""
      <div class="Polaris-FooterHelp">
        <div class="Polaris-FooterHelp__Content">
          <div class="Polaris-FooterHelp__Icon">
            <Icon source="InfoMinor"></Icon>
          </div>
          <div class="Polaris-FooterHelp__Text">
            <#slot/>
          </div>
        </div>
      </div>
    """
  end
end
