defmodule Polaris.Catalogue.OptionList do
  @moduledoc """
  """
  defmodule Basic do
    use Surface.Catalogue.Example,
      subject: Polaris.OptionList,
      catalogue: Polaris.Catalogue,
      title: "Label",
      height: "340px",
      container: {:div, class: "temporary-workaround"},
      direction: "vertical"

    alias Polaris.Link

    def render(assigns) do
      ~F"""
      <OptionList title="temporary workaround" items={[
        %{"value" => "byward_market", "label" => "Products ordered from the same categories before"},
        %{"value" => "centretown", "label" => "Products ordered out of customers usual price band"},
        %{"value" => "hintonburg", "label" => "Has the customer placed an order to this country before?"},
        %{"value" => "westboro", "label" => "The customer did not attempted to place an order with multiple declined transactions"},
        %{"value" => "downtown", "label" => "Multiple failed transactions with credit cards registered to different identities"},
        %{"value" => "downtown", "label" => "Address not seen before in similar fraudulent orders"}
      ]} />
      """
    end
  end
end
