defmodule SurfacePolaris.Page.Header do
  use Surface.Component

  @doc "Collection of page-level groups of secondary actions"
  prop(actionGroups, :list)

  @doc "Additional meta data"
  prop(additionalMetadata, :list)

  @doc "Additional navigation markup"
  prop(additionalNavigation, :list)

  @doc "Collection of breadcrumbs"
  prop(breadcrumbs, :any)

  @doc "Removes spacing between title and subtitle"
  prop(compactTitle, :boolean, default: true)

  @doc "Displays a divider between the page header and the page content"
  prop(divider, :boolean, default: false)

  @doc "Remove the normal max-width on the page"
  prop(fullWidth, :boolean, default: false)

  @doc "Decreases the maximum layout width. Intended for single-column layouts"
  prop(narrowWidth, :boolean, default: false)

  @doc "Page-level pagination"
  prop(pagination, :list)

  @doc "Primary page-level action"
  prop(primaryAction, :any)

  @doc "Collection of secondary page-level actions"
  prop(secondaryActions, :any)

  @doc "Page subtitle, in regular type"
  prop(subtitle, :string)

  @doc "thumbnail that precedes the title"
  prop(thumbnail, :string)

  @doc "Page title, in large type"
  prop(title, :string, required: true)

  @doc "Visually hide the title"
  prop(titleHidden, :boolean, default: false)

  @doc "Important and non-interactive status information shown immediately after the title."
  prop(titleMetadata, :string)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Page-Header Polaris-Page-Header--hasNavigation Polaris-Page-Header--hasActionMenu Polaris-Page-Header--mobileView Polaris-Page-Header--mediumTitle">
      <div class="Polaris-Page-Header__Row">

        {#if @breadcrumbs}
        <SurfacePolaris.Page.Breadcrumbs {=@breadcrumbs}/>
        {/if}

        {!-- Title  --}
        <SurfacePolaris.Page.Title {=@title} {=@titleMetadata} {=@subtitle} />

        {!-- Actions  --}
        {#if @primaryAction}
        <SurfacePolaris.Page.Actions {=@primaryAction} />
        {/if}
      </div>
    </div>
    """
  end
end
