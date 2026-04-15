defmodule Protocol.ExchangeCreateContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :first_token_id, 2, type: :bytes, json_name: "firstTokenId"
  field :first_token_balance, 3, type: :int64, json_name: "firstTokenBalance"
  field :second_token_id, 4, type: :bytes, json_name: "secondTokenId"
  field :second_token_balance, 5, type: :int64, json_name: "secondTokenBalance"
end
defmodule Protocol.ExchangeInjectContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :exchange_id, 2, type: :int64, json_name: "exchangeId"
  field :token_id, 3, type: :bytes, json_name: "tokenId"
  field :quant, 4, type: :int64
end
defmodule Protocol.ExchangeWithdrawContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :exchange_id, 2, type: :int64, json_name: "exchangeId"
  field :token_id, 3, type: :bytes, json_name: "tokenId"
  field :quant, 4, type: :int64
end
defmodule Protocol.ExchangeTransactionContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :exchange_id, 2, type: :int64, json_name: "exchangeId"
  field :token_id, 3, type: :bytes, json_name: "tokenId"
  field :quant, 4, type: :int64
  field :expected, 5, type: :int64
end
