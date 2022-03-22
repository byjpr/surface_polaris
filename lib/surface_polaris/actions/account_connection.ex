defmodule SurfacePolaris.Actions.AccountConnection do
  @moduledoc false

  use Surface.Component

  @doc "The name of the service"
  prop(accountName, :string)

  @doc "Action for account connection"
  prop(action, :event)

  @doc "URL for the user’s avatar image"
  prop(avatarUrl, :string)

  @doc "The name of the service"
  prop(connected, :boolean, default: false)

  @doc "Content to display as terms of service"
  prop(termsOfService, :string)

  @doc "Content to display as additional details"
  prop(details, :any)

  @doc "The name of the service"
  prop(title, :string)

  @doc "Content to be rendered in action button"
  prop(actionContent, :list, default: [activated: "Connect", deactivated: "Disconnect"])

  def render(assigns) do
    ~F"""
    <div class="Polaris-SettingAction">
      <div class="Polaris-SettingAction__Setting">
        <SurfacePolaris.Structure.Stack>
          <SurfacePolaris.Structure.Stack.Item :if={@avatarUrl}>
            {@avatarUrl}
          </SurfacePolaris.Structure.Stack.Item>
          <SurfacePolaris.Structure.Stack.Item fill>
            <div class="Polaris-AccountConnection__Content">
              <div :if={@title}>{@title}</div>
              <div :if={@details}>
                <SurfacePolaris.TitlesText.TextStyle>
                  {#if is_function(@details)}
                    {@details.(@connected)}
                  {#else}
                    {@details}
                  {/if}
                </SurfacePolaris.TitlesText.TextStyle>
              </div>
            </div>
          </SurfacePolaris.Structure.Stack.Item>
        </SurfacePolaris.Structure.Stack>
      </div>

      <div class="Polaris-SettingAction__Action">
        <SurfacePolaris.Actions.SettingToggle.Button {=@action} {=@actionContent} enabled={@connected} />
      </div>
    </div>

    <div class="Polaris-AccountConnection__TermsOfService" :if={!@connected}>
      {@termsOfService}
    </div>
    """
  end
end
