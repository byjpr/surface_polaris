defmodule Polaris.SettingToggle.Button do
  use Surface.Component

  prop(action, :event)

  prop(actionContent, :list,
    default: [
      activated: [title: "Deactivate"],
      deactivated: [title: "Activate"]
    ]
  )

  prop(enabled, :boolean, default: false)

  slot activated
  slot deactivated

  def render(assigns) do
    ~F"""
    <Polaris.Button click={@action} :if={!@enabled} primary>
      {@actionContent[:activated]}
    </Polaris.Button>

    <Polaris.Button click={@action} :if={@enabled}>
      {@actionContent[:deactivated]}
    </Polaris.Button>
    """
  end
end
