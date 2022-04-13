defmodule SurfacePolaris.Layout.AnnotatedSection do
  use Surface.Component

  prop(title, :string)
  prop(description, :string)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Layout__AnnotatedSection"]}>
      <div class={["Polaris-Layout__AnnotationWrapper"]}>
        <div class={["Polaris-Layout__Annotation"]}>
          <SurfacePolaris.TextContainer>
            <SurfacePolaris.Heading element="h2">{@title}</SurfacePolaris.Heading>
            <div class={["Polaris-Layout__AnnotationDescription"]}>
              <p>{@description}</p>
            </div>
          </SurfacePolaris.TextContainer>
        </div>
        <div class={["Polaris-Layout__AnnotationContent"]}>
          <#slot />
        </div>
      </div>
    </div>
    """
  end
end
