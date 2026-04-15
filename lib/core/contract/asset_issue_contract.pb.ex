defmodule Protocol.AssetIssueContract.FrozenSupply do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :frozen_amount, 1, type: :int64, json_name: "frozenAmount"
  field :frozen_days, 2, type: :int64, json_name: "frozenDays"
end
defmodule Protocol.AssetIssueContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :id, 41, type: :string
  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :name, 2, type: :bytes
  field :abbr, 3, type: :bytes
  field :total_supply, 4, type: :int64, json_name: "totalSupply"

  field :frozen_supply, 5,
    repeated: true,
    type: Protocol.AssetIssueContract.FrozenSupply,
    json_name: "frozenSupply"

  field :trx_num, 6, type: :int32, json_name: "trxNum"
  field :precision, 7, type: :int32
  field :num, 8, type: :int32
  field :start_time, 9, type: :int64, json_name: "startTime"
  field :end_time, 10, type: :int64, json_name: "endTime"
  field :order, 11, type: :int64
  field :vote_score, 16, type: :int32, json_name: "voteScore"
  field :description, 20, type: :bytes
  field :url, 21, type: :bytes
  field :free_asset_net_limit, 22, type: :int64, json_name: "freeAssetNetLimit"
  field :public_free_asset_net_limit, 23, type: :int64, json_name: "publicFreeAssetNetLimit"
  field :public_free_asset_net_usage, 24, type: :int64, json_name: "publicFreeAssetNetUsage"
  field :public_latest_free_net_time, 25, type: :int64, json_name: "publicLatestFreeNetTime"
end
defmodule Protocol.TransferAssetContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :asset_name, 1, type: :bytes, json_name: "assetName"
  field :owner_address, 2, type: :bytes, json_name: "ownerAddress"
  field :to_address, 3, type: :bytes, json_name: "toAddress"
  field :amount, 4, type: :int64
end
defmodule Protocol.UnfreezeAssetContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
end
defmodule Protocol.UpdateAssetContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :description, 2, type: :bytes
  field :url, 3, type: :bytes
  field :new_limit, 4, type: :int64, json_name: "newLimit"
  field :new_public_limit, 5, type: :int64, json_name: "newPublicLimit"
end
defmodule Protocol.ParticipateAssetIssueContract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :to_address, 2, type: :bytes, json_name: "toAddress"
  field :asset_name, 3, type: :bytes, json_name: "assetName"
  field :amount, 4, type: :int64
end
