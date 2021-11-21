defmodule SurfacePolaris.Feedback.Banner do
  @moduledoc """
  Informs merchants about important changes or persistent conditions.
  Use this component if you need to communicate to merchants in a prominent way.
  Banners are placed at the top of the page or section they apply to, and below the page or section header.
  """

  use Surface.Component

  alias SurfacePolaris.Actions.ButtonGroup
  alias SurfacePolaris.Feedback.Banner

  @module_name "Polaris-Banner"

  @doc "Set the color of the badge for the given status."
  prop(title, :string)

  @doc "Set the color of the badge for the given status."
  prop(status, :string,
    default: "default",
    values: ~w(success info critical warning default)
  )

  prop(withinContent, :boolean, default: false)

  prop(action, :keyword)
  prop(secondaryAction, :keyword)

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
      <Banner.Dismiss />
      <Banner.Ribbon />

      <Banner.ContentWrapper>
        <Banner.Heading>
          <SurfacePolaris.TitlesText.Heading>{@title}</SurfacePolaris.TitlesText.Heading>
        </Banner.Heading>
        <Banner.Content>
          <#slot/>

          <div class={"Polaris-Banner__Actions"} :if={@action || @secondaryAction}>
            <ButtonGroup>
              <ButtonGroup.Item :if={@action}>
                <div class={"Polaris-Banner__PrimaryAction"}>
                  <Banner.ActionFrom action={@action} />
                </div>
              </ButtonGroup.Item>
              <ButtonGroup.Item :if={@secondaryAction}>
                <Banner.ActionFrom action={@secondaryAction} secondary/>
              </ButtonGroup.Item>
            </ButtonGroup>
          </div>
        </Banner.Content>
      </Banner.ContentWrapper>
    </div>
    """
  end
end
