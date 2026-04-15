defmodule Protocol.AuthenticationPath do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :value, 1, repeated: true, type: :bool
end
defmodule Protocol.MerklePath do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :authentication_paths, 1,
    repeated: true,
    type: Protocol.AuthenticationPath,
    json_name: "authenticationPaths"

  field :index, 2, repeated: true, type: :bool
  field :rt, 3, type: :bytes
end
defmodule Protocol.OutputPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :hash, 1, type: :bytes
  field :index, 2, type: :int32
end
defmodule Protocol.OutputPointInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :out_points, 1, repeated: true, type: Protocol.OutputPoint, json_name: "outPoints"
  field :block_num, 2, type: :int32, json_name: "blockNum"
end
defmodule Protocol.PedersenHash do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :content, 1, type: :bytes
end
defmodule Protocol.IncrementalMerkleTree do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :left, 1, type: Protocol.PedersenHash
  field :right, 2, type: Protocol.PedersenHash
  field :parents, 3, repeated: true, type: Protocol.PedersenHash
end
defmodule Protocol.IncrementalMerkleVoucher do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :tree, 1, type: Protocol.IncrementalMerkleTree
  field :filled, 2, repeated: true, type: Protocol.PedersenHash
  field :cursor, 3, type: Protocol.IncrementalMerkleTree
  field :cursor_depth, 4, type: :int64, json_name: "cursorDepth"
  field :rt, 5, type: :bytes
  field :output_point, 10, type: Protocol.OutputPoint, json_name: "outputPoint"
end
defmodule Protocol.IncrementalMerkleVoucherInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :vouchers, 1, repeated: true, type: Protocol.IncrementalMerkleVoucher
  field :paths, 2, repeated: true, type: :bytes
end
defmodule Protocol.SpendDescription do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :value_commitment, 1, type: :bytes, json_name: "valueCommitment"
  field :anchor, 2, type: :bytes
  field :nullifier, 3, type: :bytes
  field :rk, 4, type: :bytes
  field :zkproof, 5, type: :bytes
  field :spend_authority_signature, 6, type: :bytes, json_name: "spendAuthoritySignature"
end
defmodule Protocol.ReceiveDescription do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :value_commitment, 1, type: :bytes, json_name: "valueCommitment"
  field :note_commitment, 2, type: :bytes, json_name: "noteCommitment"
  field :epk, 3, type: :bytes
  field :c_enc, 4, type: :bytes, json_name: "cEnc"
  field :c_out, 5, type: :bytes, json_name: "cOut"
  field :zkproof, 6, type: :bytes
end
defmodule Protocol.ShieldedTransferContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transparent_from_address, 1, type: :bytes, json_name: "transparentFromAddress"
  field :from_amount, 2, type: :int64, json_name: "fromAmount"

  field :spend_description, 3,
    repeated: true,
    type: Protocol.SpendDescription,
    json_name: "spendDescription"

  field :receive_description, 4,
    repeated: true,
    type: Protocol.ReceiveDescription,
    json_name: "receiveDescription"

  field :binding_signature, 5, type: :bytes, json_name: "bindingSignature"
  field :transparent_to_address, 6, type: :bytes, json_name: "transparentToAddress"
  field :to_amount, 7, type: :int64, json_name: "toAmount"
end
