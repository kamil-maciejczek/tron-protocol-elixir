defmodule Protocol.InventoryItems do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: :int32
  field :items, 2, repeated: true, type: :bytes
end
