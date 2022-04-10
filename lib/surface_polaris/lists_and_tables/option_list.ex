defmodule SurfacePolaris.ListTables.OptionList do
  @moduledoc """
  The option list component lets you create a list of grouped items that merchants can pick from. This can include single selection or multiple selection of options. Option list usually appears in a popover, and sometimes in a modal or a sidebar. Option lists are styled differently than choice lists and should not be used within a form, but as a standalone menu.
  """

  use Surface.Component

  @doc "Text displayed beside the icon"
  prop(items, :any, default: [])

  prop(title, :string)

  def render(assigns) do
    ~F"""
    <ul class="Polaris-OptionList">
      <li>
        <p class="Polaris-OptionList__Title">{@title}</p>

        <ul class="Polaris-OptionList__Options" id="PolarisOptionList4-0">
        {#for item <- @items}
          <li class="Polaris-OptionList-Option" tabindex="-1">
            <label class="Polaris-OptionList-Option__Label">
            <div class="Polaris-OptionList-Option__Checkbox">
              <div class="Polaris-OptionList-Checkbox">
                <input id="PolarisOptionList4-0-0" type="checkbox" class="Polaris-OptionList-Checkbox__Input" aria-checked="false" value="online_store">
                <div class="Polaris-OptionList-Checkbox__Backdrop"></div>
                  <div class="Polaris-OptionList-Checkbox__Icon">
                    <span class="Polaris-Icon">
                      <span class="Polaris-VisuallyHidden"></span>
                      <svg viewBox="0 0 20 20" class="Polaris-Icon__Svg" focusable="false" aria-hidden="true"><path d="m8.315 13.859-3.182-3.417a.506.506 0 0 1 0-.684l.643-.683a.437.437 0 0 1 .642 0l2.22 2.393 4.942-5.327a.436.436 0 0 1 .643 0l.643.684a.504.504 0 0 1 0 .683l-5.91 6.35a.437.437 0 0 1-.642 0"></path></svg>
                    </span>
                  </div>
                </div>
              </div>
            {item["label"]}
            </label>
          </li>
        {#else}
          No items
        {/for}
        </ul>
      </li>
    </ul>
    """
  end
end
