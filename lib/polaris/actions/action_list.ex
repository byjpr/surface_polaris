defmodule Polaris.ActionList do
  use Surface.Component

  prop(items, :list, default: [])

  def render(assigns) do
    ~F"""
    <div class="Polaris-ActionList">
      <div class="Polaris-ActionList__Section--withoutTitle">
        <ul class="Polaris-ActionList__Actions">
        {#for item <- @items}
          <li>
            <Polaris.Button {...item} action_list={true}>
              {item[:content]}
            </Polaris.Button>
          </li>
        {/for}
        </ul>
      </div>
    </div>
    """
  end
end
