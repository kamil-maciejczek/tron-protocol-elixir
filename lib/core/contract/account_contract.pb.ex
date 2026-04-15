defmodule Protocol.AccountCreateContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :account_address, 2, type: :bytes, json_name: "accountAddress"
  field :type, 3, type: Protocol.AccountType, enum: true
end
defmodule Protocol.AccountUpdateContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :account_name, 1, type: :bytes, json_name: "accountName"
  field :owner_address, 2, type: :bytes, json_name: "ownerAddress"
end
defmodule Protocol.SetAccountIdContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :account_id, 1, type: :bytes, json_name: "accountId"
  field :owner_address, 2, type: :bytes, json_name: "ownerAddress"
end
defmodule Protocol.AccountPermissionUpdateContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :owner, 2, type: Protocol.Permission
  field :witness, 3, type: Protocol.Permission
  field :actives, 4, repeated: true, type: Protocol.Permission
end
