defmodule SurfacePolaris.Feedback.Banner do
  @moduledoc """
  Informs merchants about important changes or persistent conditions.
  Use this component if you need to communicate to merchants in a prominent way.
  Banners are placed at the top of the page or section they apply to, and below the page or section header.
  """

  use Surface.Component

  @module_name "Polaris-Banner"

  @doc "Set the color of the badge for the given status."
  prop(title, :string)

  @doc "Set the color of the badge for the given status."
  prop(status, :string,
    default: "default",
    values: ~w(success info critical warning default)
  )

  prop(withinContent, :boolean, default: false)

  slot(default)

  defp css_variation_name(name, value), do: SPCSS.variation_name(@module_name, name, value)

  def render(assigns) do
    ~F"""
    <div
    class={
      ["Polaris-Banner", "Polaris-Banner--hasDismiss"] ++ [
      "#{css_variation_name("status", "success")}": @status == "success",
      "#{css_variation_name("status", "info")}": @status == "info",
      "#{css_variation_name("status", "critical")}": @status == "critical",
      "#{css_variation_name("status", "warning")}": @status == "warning",
      "Polaris-Banner--withinContentContainer": @withinContent,
      "Polaris-Banner--withinPage": !@withinContent,
    ]}>
      <SurfacePolaris.Feedback.Banner.Dismiss />
      <SurfacePolaris.Feedback.Banner.Ribbon />

      <SurfacePolaris.Feedback.Banner.ContentWrapper>
        <SurfacePolaris.Feedback.Banner.Heading>
          <SurfacePolaris.TitlesText.Heading>{@title}</SurfacePolaris.TitlesText.Heading>
        </SurfacePolaris.Feedback.Banner.Heading>
        <SurfacePolaris.Feedback.Banner.Content>
          <#slot/>
        </SurfacePolaris.Feedback.Banner.Content>
      </SurfacePolaris.Feedback.Banner.ContentWrapper>
    </div>
    """
  end
end
