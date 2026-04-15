defmodule Protocol.ZksnarkResponse.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :SUCCESS, 0
  field :FAILED, 1
end
defmodule Protocol.ZksnarkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transaction, 1, type: Protocol.Transaction
  field :sighash, 2, type: :bytes
  field :valueBalance, 3, type: :int64
  field :txId, 4, type: :string
end
defmodule Protocol.ZksnarkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :code, 1, type: Protocol.ZksnarkResponse.Code, enum: true
end
defmodule Protocol.TronZksnark.Service do
  @moduledoc false
  use GRPC.Service, name: "protocol.TronZksnark", protoc_gen_elixir_version: "0.10.0"

  rpc :CheckZksnarkProof, Protocol.ZksnarkRequest, Protocol.ZksnarkResponse
end

defmodule Protocol.TronZksnark.Stub do
  @moduledoc false
  use GRPC.Stub, service: Protocol.TronZksnark.Service
end
