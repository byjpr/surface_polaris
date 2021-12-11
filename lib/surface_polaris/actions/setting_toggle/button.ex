defmodule SurfacePolaris.Actions.SettingToggle.Button do
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
    <SurfacePolaris.Actions.Button click={@action} :if={!@enabled} primary>
      {@actionContent[:activated]}
    </SurfacePolaris.Actions.Button>

    <SurfacePolaris.Actions.Button click={@action} :if={@enabled}>
      {@actionContent[:deactivated]}
    </SurfacePolaris.Actions.Button>
    """
  end
end
