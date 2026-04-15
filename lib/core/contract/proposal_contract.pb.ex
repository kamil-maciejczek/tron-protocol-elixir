defmodule Protocol.ProposalApproveContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :proposal_id, 2, type: :int64, json_name: "proposalId"
  field :is_add_approval, 3, type: :bool, json_name: "isAddApproval"
end
defmodule Protocol.ProposalCreateContract.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :int64
  field :value, 2, type: :int64
end
defmodule Protocol.ProposalCreateContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"

  field :parameters, 2,
    repeated: true,
    type: Protocol.ProposalCreateContract.ParametersEntry,
    map: true
end
defmodule Protocol.ProposalDeleteContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :proposal_id, 2, type: :int64, json_name: "proposalId"
end
