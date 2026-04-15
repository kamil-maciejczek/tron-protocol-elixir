defmodule Protocol.ResourceCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :BANDWIDTH, 0
  field :ENERGY, 1
  field :TRON_POWER, 2
end
