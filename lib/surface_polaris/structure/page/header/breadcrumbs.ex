defmodule SurfacePolaris.Structure.Page.Breadcrumbs do
  use Surface.Component

  @doc "Collection of breadcrumbs"
  prop(breadcrumbs, :any)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Page-Header__BreadcrumbWrapper" :if={List.first(@breadcrumbs)}>
      <nav role="navigation">
        <a class="Polaris-Breadcrumbs__Breadcrumb" href={List.first(@breadcrumbs)[:url]} data-polaris-unstyled="true">
          <span class="Polaris-Breadcrumbs__ContentWrapper">
            <span class="Polaris-Breadcrumbs__Icon">
              <span class="Polaris-Icon">
                <span class="Polaris-VisuallyHidden"></span>
                <svg viewBox="0 0 20 20" class="Polaris-Icon__Svg" focusable="false" aria-hidden="true">
                  <path d="M17 9H5.414l3.293-3.293a.999.999 0 1 0-1.414-1.414l-5 5a.999.999 0 0 0 0 1.414l5 5a.997.997 0 0 0 1.414 0 .999.999 0 0 0 0-1.414L5.414 11H17a1 1 0 1 0 0-2z"></path>
                </svg>
              </span>
            </span>
            <span class="Polaris-VisuallyHidden">{List.first(@breadcrumbs)[:content]}</span>
          </span>
        </a>
      </nav>
    </div>
    """
  end
end
