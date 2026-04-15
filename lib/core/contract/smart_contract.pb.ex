defmodule Protocol.SmartContract.ABI.Entry.EntryType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :UnknownEntryType, 0
  field :Constructor, 1
  field :Function, 2
  field :Event, 3
  field :Fallback, 4
  field :Receive, 5
  field :Error, 6
end
defmodule Protocol.SmartContract.ABI.Entry.StateMutabilityType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :UnknownMutabilityType, 0
  field :Pure, 1
  field :View, 2
  field :Nonpayable, 3
  field :Payable, 4
end
defmodule Protocol.SmartContract.ABI.Entry.Param do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :indexed, 1, type: :bool
  field :name, 2, type: :string
  field :type, 3, type: :string
end
defmodule Protocol.SmartContract.ABI.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :anonymous, 1, type: :bool
  field :constant, 2, type: :bool
  field :name, 3, type: :string
  field :inputs, 4, repeated: true, type: Protocol.SmartContract.ABI.Entry.Param
  field :outputs, 5, repeated: true, type: Protocol.SmartContract.ABI.Entry.Param
  field :type, 6, type: Protocol.SmartContract.ABI.Entry.EntryType, enum: true
  field :payable, 7, type: :bool

  field :stateMutability, 8,
    type: Protocol.SmartContract.ABI.Entry.StateMutabilityType,
    enum: true
end
defmodule Protocol.SmartContract.ABI do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :entrys, 1, repeated: true, type: Protocol.SmartContract.ABI.Entry
end
defmodule Protocol.SmartContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :origin_address, 1, type: :bytes, json_name: "originAddress"
  field :contract_address, 2, type: :bytes, json_name: "contractAddress"
  field :abi, 3, type: Protocol.SmartContract.ABI
  field :bytecode, 4, type: :bytes
  field :call_value, 5, type: :int64, json_name: "callValue"
  field :consume_user_resource_percent, 6, type: :int64, json_name: "consumeUserResourcePercent"
  field :name, 7, type: :string
  field :origin_energy_limit, 8, type: :int64, json_name: "originEnergyLimit"
  field :code_hash, 9, type: :bytes, json_name: "codeHash"
  field :trx_hash, 10, type: :bytes, json_name: "trxHash"
  field :version, 11, type: :int32
end
defmodule Protocol.ContractState do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :energy_usage, 1, type: :int64, json_name: "energyUsage"
  field :energy_factor, 2, type: :int64, json_name: "energyFactor"
  field :update_cycle, 3, type: :int64, json_name: "updateCycle"
end
defmodule Protocol.CreateSmartContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :new_contract, 2, type: Protocol.SmartContract, json_name: "newContract"
  field :call_token_value, 3, type: :int64, json_name: "callTokenValue"
  field :token_id, 4, type: :int64, json_name: "tokenId"
end
defmodule Protocol.TriggerSmartContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :contract_address, 2, type: :bytes, json_name: "contractAddress"
  field :call_value, 3, type: :int64, json_name: "callValue"
  field :data, 4, type: :bytes
  field :call_token_value, 5, type: :int64, json_name: "callTokenValue"
  field :token_id, 6, type: :int64, json_name: "tokenId"
end
defmodule Protocol.ClearABIContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :contract_address, 2, type: :bytes, json_name: "contractAddress"
end
defmodule Protocol.UpdateSettingContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :contract_address, 2, type: :bytes, json_name: "contractAddress"
  field :consume_user_resource_percent, 3, type: :int64, json_name: "consumeUserResourcePercent"
end
defmodule Protocol.UpdateEnergyLimitContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :contract_address, 2, type: :bytes, json_name: "contractAddress"
  field :origin_energy_limit, 3, type: :int64, json_name: "originEnergyLimit"
end
defmodule Protocol.SmartContractDataWrapper do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :smart_contract, 1, type: Protocol.SmartContract, json_name: "smartContract"
  field :runtimecode, 2, type: :bytes
  field :contract_state, 3, type: Protocol.ContractState, json_name: "contractState"
end
