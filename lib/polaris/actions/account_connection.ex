defmodule Polaris.AccountConnection do
  @moduledoc """
  """

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
        <Polaris.Stack>
          <Polaris.Stack.Item :if={@avatarUrl}>
            {@avatarUrl}
          </Polaris.Stack.Item>
          <Polaris.Stack.Item fill>
            <div class="Polaris-AccountConnection__Content">
              <div :if={@title}>{@title}</div>
              <div :if={@details}>
                <Polaris.TextStyle>
                  {#if is_function(@details)}
                    {@details.(@connected)}
                  {#else}
                    {@details}
                  {/if}
                </Polaris.TextStyle>
              </div>
            </div>
          </Polaris.Stack.Item>
        </Polaris.Stack>
      </div>

      <div class="Polaris-SettingAction__Action">
        <Polaris.SettingToggle.Button {=@action} {=@actionContent} enabled={@connected} />
      </div>
    </div>

    <div class="Polaris-AccountConnection__TermsOfService" :if={!@connected}>
      {@termsOfService}
    </div>
    """
  end
end
