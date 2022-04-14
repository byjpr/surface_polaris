defmodule Polaris.Card.Header do
  @moduledoc """
  """

  use Surface.Component

  @doc "Title content for the card"
  prop(title, :string)

  @doc "Card header actions"
  prop(actions, :any)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Card__Header">
      <.heading title={@title} :if={!@actions} />
      <.heading_with_action title={@title} actions={@actions} :if={@actions} />
    </div>
    """
  end

  def heading(assigns) do
    ~F"""
      <Polaris.Heading element="h2">
        {@title}
      </Polaris.Heading>
    """
  end

  def heading_with_action(assigns) do
    ~F"""
      <Polaris.Stack alignment="baseline">
        <Polaris.Stack.Item fill>
          <.heading title={@title} />
        </Polaris.Stack.Item>
        <Polaris.Stack.Item>
          <.action_group actions={@actions} />
        </Polaris.Stack.Item>
      </Polaris.Stack>
    """
  end

  def action_group(assigns) do
    ~F"""
    <Polaris.ButtonGroup>
    {#if is_list(@actions)}
      {#for item <- @actions}
        <Polaris.Button {...item} plain>
          {item[:content]}
        </Polaris.Button>
      {/for}
    {#else}
      <Polaris.Button {...@actions} plain>
        {@actions[:content]}
      </Polaris.Button>
    {/if}
    </Polaris.ButtonGroup>
    """
  end
end
