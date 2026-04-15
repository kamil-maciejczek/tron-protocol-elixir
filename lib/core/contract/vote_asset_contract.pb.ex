defmodule Protocol.VoteAssetContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :vote_address, 2, repeated: true, type: :bytes, json_name: "voteAddress"
  field :support, 3, type: :bool
  field :count, 5, type: :int32
end
