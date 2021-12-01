defmodule SurfacePolaris.Structure.Page.Actions do
  use Surface.Component

  @doc "Primary page-level action"
  prop(primaryAction, :any)

  @doc "Collection of secondary page-level actions"
  prop(secondaryActions, :any)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Page-Header__RightAlign">
      <div class="Polaris-Page-Header__Actions">
        <div class="Polaris-ActionMenu" :if={@secondaryActions}>
          <div>
            <div class="Polaris-ActionMenu-RollupActions__RollupActivator">
              <button class="Polaris-Button Polaris-Button--outline Polaris-Button--iconOnly" aria-label="Actions" type="button" tabindex="0" aria-controls="Polarispopover2" aria-owns="Polarispopover2" aria-expanded="false">
                <span class="Polaris-Button__Content">
                  <span class="Polaris-Button__Icon">
                    <span class="Polaris-Icon">
                      <span class="Polaris-VisuallyHidden"></span>
                      <svg viewBox="0 0 20 20" class="Polaris-Icon__Svg" focusable="false" aria-hidden="true">
                        <path d="M6 10a2 2 0 1 1-4.001-.001A2 2 0 0 1 6 10zm6 0a2 2 0 1 1-4.001-.001A2 2 0 0 1 12 10zm6 0a2 2 0 1 1-4.001-.001A2 2 0 0 1 18 10z"></path>
                      </svg>
                    </span>
                  </span>
                </span>
              </button>
            </div>
          </div>
        </div>
        <div class="Polaris-Page-Header__PrimaryActionWrapper">
          <SurfacePolaris.Actions.Button {...@primaryAction}>
            {@primaryAction[:content]}
          </SurfacePolaris.Actions.Button>
        </div>
      </div>
    </div>
    """
  end
end
