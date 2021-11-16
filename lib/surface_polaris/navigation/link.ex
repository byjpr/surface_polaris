defmodule SurfacePolaris.Link do
  @moduledoc """
  `<hX>` elements of subtitle type
  """

  use Surface.Component

  prop external, :boolean, default: false
  prop id, :string, default: ""
  prop monochrome, :boolean, default: false
  prop remove_underline, :boolean, default: false

  prop url, :string, default: "#"

  @doc "Triggered on click"
  prop click, :event

  slot default

  def render(assigns) do
    ~F"""
    <a href={"#{@url}"}
      :on-click={@click}
      class={["Polaris-Link", "is-#{@color}": @monochrome, "is-#{@size}": @remove_underline]}>

      <#slot/>

      <span :if={@external} class="Polaris-Link__IconLockup">
        <span class="Polaris-Link__IconLayout">
          <Icon source="ExternalSmallMinor"></Icon>
        </span>
      </span>
    </a>
    """
  end
end
