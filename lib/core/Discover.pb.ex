defmodule Protocol.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: :bytes
  field :port, 2, type: :int32
  field :nodeId, 3, type: :bytes
  field :addressIpv6, 4, type: :bytes
end
defmodule Protocol.PingMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :from, 1, type: Protocol.Endpoint
  field :to, 2, type: Protocol.Endpoint
  field :version, 3, type: :int32
  field :timestamp, 4, type: :int64
end
defmodule Protocol.PongMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :from, 1, type: Protocol.Endpoint
  field :echo, 2, type: :int32
  field :timestamp, 3, type: :int64
end
defmodule Protocol.FindNeighbours do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :from, 1, type: Protocol.Endpoint
  field :targetId, 2, type: :bytes
  field :timestamp, 3, type: :int64
end
defmodule Protocol.Neighbours do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :from, 1, type: Protocol.Endpoint
  field :neighbours, 2, repeated: true, type: Protocol.Endpoint
  field :timestamp, 3, type: :int64
end
defmodule Protocol.BackupMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :flag, 1, type: :bool
  field :priority, 2, type: :int32
end
