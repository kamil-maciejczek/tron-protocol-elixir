defmodule Protocol.MarketSellAssetContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :sell_token_id, 2, type: :bytes, json_name: "sellTokenId"
  field :sell_token_quantity, 3, type: :int64, json_name: "sellTokenQuantity"
  field :buy_token_id, 4, type: :bytes, json_name: "buyTokenId"
  field :buy_token_quantity, 5, type: :int64, json_name: "buyTokenQuantity"
end
defmodule Protocol.MarketCancelOrderContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :order_id, 2, type: :bytes, json_name: "orderId"
end
