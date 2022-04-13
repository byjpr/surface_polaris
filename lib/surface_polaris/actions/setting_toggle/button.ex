defmodule SurfacePolaris.SettingToggle.Button do
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
    <SurfacePolaris.Button click={@action} :if={!@enabled} primary>
      {@actionContent[:activated]}
    </SurfacePolaris.Button>

    <SurfacePolaris.Button click={@action} :if={@enabled}>
      {@actionContent[:deactivated]}
    </SurfacePolaris.Button>
    """
  end
end
