defmodule SurfacePolaris.Page.Title do
  use Surface.Component

  @doc "Additional meta data"
  prop(additionalMetadata, :list)

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
    <div class="Polaris-Page-Header__TitleWrapper">
      <div class="Polaris-Header-Title--hasThumbnail">
        <div :if={@thumbnail}>
          <span class="Polaris-Thumbnail Polaris-Thumbnail--sizeMedium">
            {@thumbnail}
          </span>
        </div>
        <div class="Polaris-Header-Title__TitleAndSubtitleWrapper">
          <div class="Polaris-Header-Title__TitleWithMetadataWrapper">
            <h1 class="Polaris-Header-Title">{@title}</h1>
            <div class="Polaris-Header-Title__TitleMetadata" :if={@titleMetadata}>
              {@titleMetadata}
            </div>
          </div>
          <div class="Polaris-Header-Title__SubTitle Polaris-Header-Title__SubtitleCompact" :if={@subtitle}>
            <p>{@subtitle}</p>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
