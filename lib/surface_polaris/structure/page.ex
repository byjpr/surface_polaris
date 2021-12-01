defmodule SurfacePolaris.Structure.Page do
  @moduledoc """
  The layout component is used to create the main layout on a page.
  Layouts sections come in three main configurations: one-column, two-column, and annotated.
  One and two column layouts can be combined in the same page.
  Annotated layouts should be used on their own and only on settings pages.

  ```
  <Structure.Page
    breadcrumbs={[%{content: "Overview", url: "/"}]}
    title="Invoice"
    subtitle="Statement period: May 3, 2019 to June 2, 2019">
  </Structure.Page>
  ```
  """
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

  slot(default)

  def render(assigns) do
    ~F"""
    <div class="Polaris-Page">
      <SurfacePolaris.Structure.Page.Header {=@breadcrumbs} {=@title} {=@titleMetadata} {=@subtitle} {=@primaryAction} />

      <SurfacePolaris.Structure.Page.Content>
        <#slot />
      </SurfacePolaris.Structure.Page.Content>
    </div>
    """
  end
end
