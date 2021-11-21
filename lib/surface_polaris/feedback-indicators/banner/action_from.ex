defmodule SurfacePolaris.Feedback.Banner.ActionFrom do
  use Surface.Component

  @doc """
  Additional attributes to add onto the generated element
  """
  prop(action, :keyword)
  prop(click, :event)
  prop(secondary, :boolean, default: false)

  def render(assigns) do
    ~F"""
      <button
        :if={!Keyword.get(@action, :url)}
        :on-click={@click}
        class={["Polaris-Banner__Button": !@secondary, "Polaris-Banner__SecondaryAction": @secondary]}>
        {Keyword.get(@action, :content)}
      </button>

      <a
        :if={Keyword.get(@action, :url)}
        href={Keyword.get(@action, :url)}
        class={["Polaris-Banner__Button": !@secondary, "Polaris-Banner__SecondaryAction": @secondary]}>
        {Keyword.get(@action, :content)}
      </a>
    """
  end
end
