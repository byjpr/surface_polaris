defmodule Polaris.Layout.AnnotatedSection do
  use Surface.Component

  prop(title, :string)
  prop(description, :string)

  slot(default)

  def render(assigns) do
    ~F"""
    <div class={["Polaris-Layout__AnnotatedSection"]}>
      <div class={["Polaris-Layout__AnnotationWrapper"]}>
        <div class={["Polaris-Layout__Annotation"]}>
          <Polaris.TextContainer>
            <Polaris.Heading element="h2">{@title}</Polaris.Heading>
            <div class={["Polaris-Layout__AnnotationDescription"]}>
              <p>{@description}</p>
            </div>
          </Polaris.TextContainer>
        </div>
        <div class={["Polaris-Layout__AnnotationContent"]}>
          <#slot />
        </div>
      </div>
    </div>
    """
  end
end
