defmodule SurfacePolaris.Structure.Layout.AnnotatedSection do
  use Surface.Component

  prop(title, :string)
  prop(description, :string)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Layout__AnnotatedSection"]}>
      <div class={["Polaris-Layout__AnnotationWrapper"]}>
        <div class={["Polaris-Layout__Annotation"]}>
          <SurfacePolaris.TitlesText.TextContainer>
            <SurfacePolaris.TitlesText.Heading element="h2">{@title}</SurfacePolaris.TitlesText.Heading>
            <div class={["Polaris-Layout__AnnotationDescription"]}>
              <p>{@description}</p>
            </div>
          </SurfacePolaris.TitlesText.TextContainer>
        </div>
        <div class={["Polaris-Layout__AnnotationContent"]}>
          <#slot />
        </div>
      </div>
    </div>
    """
  end
end
