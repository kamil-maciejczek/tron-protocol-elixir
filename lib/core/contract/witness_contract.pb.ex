defmodule Protocol.WitnessCreateContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :url, 2, type: :bytes
end
defmodule Protocol.WitnessUpdateContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :update_url, 12, type: :bytes, json_name: "updateUrl"
end
defmodule Protocol.VoteWitnessContract.Vote do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :vote_address, 1, type: :bytes, json_name: "voteAddress"
  field :vote_count, 2, type: :int64, json_name: "voteCount"
end
defmodule Protocol.VoteWitnessContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :votes, 2, repeated: true, type: Protocol.VoteWitnessContract.Vote
  field :support, 3, type: :bool
end
