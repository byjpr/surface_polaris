defmodule SurfacePolaris.ActionList do
  use Surface.Component

  prop(items, :list, default: [])

  def render(assigns) do
    ~F"""
    <div class="Polaris-ActionList">
      <div class="Polaris-ActionList__Section--withoutTitle">
        <ul class="Polaris-ActionList__Actions">
        {#for item <- @items}
          <li>
            <SurfacePolaris.Button {...item} action_list={true}>
              {item[:content]}
            </SurfacePolaris.Button>
          </li>
        {/for}
        </ul>
      </div>
    </div>
    """
  end
end
