defmodule SurfacePolaris.Collapsible do
  use Surface.LiveComponent

  prop(expandOnPrint, :boolean, default: true)
  data(open_state, :boolean, default: true)

  slot(default)

  defp style, do: "transition-duration: 500ms; transition-timing-function: ease-in-out;"
  defp open_style, do: "max-height: none; overflow: visible;"
  defp closed_style, do: "max-height: 0px; overflow: hidden;"

  def render(assigns) do
    open_css = "#{style()} #{open_style()}"
    close_css = "#{style()} #{closed_style()}"

    ~F"""
    <div id={@id}
         class="Polaris-Collapsible Polaris-Collapsible--expandOnPrint"
         style={if @open_state, do: open_css, else: close_css}
         aria-expanded={"#{@open_state}"}>
      <#slot />
    </div>
    """
  end

  # Event handlers

  @doc """
  Flips boolean of `open_state`.
  """
  def handle_event("toggle", _, socket) do
    {:noreply, update(socket, :open_state, &(&1 |> Kernel.not()))}
  end
end
