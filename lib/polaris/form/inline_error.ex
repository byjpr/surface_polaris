defmodule Polaris.InlineError do
  @moduledoc """
  Inline errors are brief, in-context messages that tell
  merchants something went wrong with a single or group
  of inputs in a form. Use inline errors to help
  merchants understand why a form input may not be valid
  and how to fix it.
  """

  use Surface.Component

  @doc "Unique identifier of the invalid form field that the message describes"
  prop(fieldID, :string, required: true)

  @doc "Content briefly explaining how to resolve the invalid form field input. If missing or empty string the component will not render."
  prop(message, :string)

  def render(assigns) do
    unless assigns[:fieldID] || Keyword.get(assigns.opts, :fieldID) do
      raise ArgumentError, "<Form.InlineError /> requires a fieldID prop"
    end

    ~F"""
    <div id={@fieldID} class="Polaris-InlineError" :if={@message && (@message != "")}>
      <div class="Polaris-InlineError__Icon">
        <span class="Polaris-Icon"><span class="Polaris-VisuallyHidden"></span><svg viewBox="0 0 20 20" class="Polaris-Icon__Svg" focusable="false" aria-hidden="true"><path d="M10 18a8 8 0 1 1 0-16 8 8 0 0 1 0 16zM9 9a1 1 0 0 0 2 0V7a1 1 0 1 0-2 0v2zm0 4a1 1 0 1 0 2 0 1 1 0 0 0-2 0z"></path></svg></span>
      </div>
      {@message}
    </div>
    """
  end
end
