defmodule SurfacePolaris.Link do
  @moduledoc """
  Links take users to another place, and usually
  appear within or directly following a sentence.
  """

  use Surface.Component
  alias SurfacePolaris.Icon

  prop(external, :boolean, default: false)
  prop(id, :string, default: "")
  prop(monochrome, :boolean, default: false)
  prop(remove_underline, :boolean, default: false)

  prop(url, :string, default: "#")

  @doc "Triggered on click"
  prop(click, :event)

  slot(default)

  def render(assigns) do
    ~F"""
    <a
      href={"#{@url}"}
      :on-click={@click}
      class={["Polaris-Link", "is-#{@monochrome}": @monochrome, "is-#{@remove_underline}": @remove_underline]}
    >
      <#slot />

      <span :if={@external} class="Polaris-Link__IconLockup">
        <span class="Polaris-Link__IconLayout">
          <Icon source="ExternalSmallMinor" />
        </span>
      </span>
    </a>
    """
  end
end
