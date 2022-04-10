defmodule SurfacePolaris.Form.Select do
  @moduledoc """
  Select lets merchants choose one option from an options menu.
  Consider select when you have 4 or more options, to avoid cluttering the interface.

  Uses Alpine.js

  https://polaris.shopify.com/components/forms/select
  """

  use Surface.Component

  prop(options, :list)

  prop(disabled, :boolean, default: false)

  def render(assigns) do
    ~F"""
    <div>
      <div class="Polaris-Labelled__LabelWrapper">
        <div class="Polaris-Label">
          <label id="PolarisSelect10Label" for="PolarisSelect10" class="Polaris-Label__Text">Date range</label>
        </div>
      </div>
      <div class="Polaris-Select" data-controller="polariselect">
        <Surface.Components.Form.Select class="Polaris-Select__Input" form="user" field="role" options={"Admin": "admin", "User": "user", "Mod": "mod"} opts={"data-polariselect-target": "source", "data-action": "polariselect#change"} />
        <div class="Polaris-Select__Content" aria-hidden="true">
          <span class="Polaris-Select__SelectedOption" data-polariselect-target="target"></span>
          <span class="Polaris-Select__Icon">
            <span class="Polaris-Icon">
              <span class="Polaris-VisuallyHidden"></span>
              <svg viewBox="0 0 20 20" class="Polaris-Icon__Svg" focusable="false" aria-hidden="true">
                <path d="M7.676 9h4.648c.563 0 .879-.603.53-1.014L10.531 5.24a.708.708 0 0 0-1.062 0L7.145 7.986C6.798 8.397 7.113 9 7.676 9zm4.648 2H7.676c-.563 0-.878.603-.53 1.014l2.323 2.746c.27.32.792.32 1.062 0l2.323-2.746c.349-.411.033-1.014-.53-1.014z"></path>
              </svg>
            </span>
          </span>
        </div>
        <div class="Polaris-Select__Backdrop"></div>
      </div>
    </div>
    """
  end
end
