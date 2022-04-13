defmodule SurfacePolaris.FooterHelp do
  @moduledoc """
  Footer help is used to refer merchants to more
  information related to the product or feature they’re using.
  """

  use Surface.Component
  alias SurfacePolaris.Icon

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-FooterHelp">
      <div class="Polaris-FooterHelp__Content">
        <div class="Polaris-FooterHelp__Icon">
          <Icon source="InfoMinor" />
        </div>
        <div class="Polaris-FooterHelp__Text">
          <#slot />
        </div>
      </div>
    </div>
    """
  end
end
