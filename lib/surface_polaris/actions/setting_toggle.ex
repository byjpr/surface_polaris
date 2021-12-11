defmodule SurfacePolaris.Actions.SettingToggle do
  use Surface.Component

  prop(action, :event)
  prop(actionContent, :list, default: [activated: "Activate", deactivated: "Deactivate"])
  prop(enabled, :boolean, default: false)

  slot activated
  slot deactivated

  def render(assigns) do
    ~F"""
    <div class="Polaris-SettingAction">
      <div class="Polaris-SettingAction__Setting">
        <div :if={@enabled}>
          <#slot name="activated">
            This setting is activated.
          </#slot>
        </div>

        <div :if={!@enabled}>
          <#slot name="deactivated">
            This setting is deactivated.
          </#slot>
        </div>
      </div>

      <div class="Polaris-SettingAction__Action">
        <SurfacePolaris.Actions.SettingToggle.Button {=@action} {=@actionContent} {=@enabled} />
      </div>
    </div>
    """
  end
end
