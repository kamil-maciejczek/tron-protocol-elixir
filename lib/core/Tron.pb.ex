defmodule Protocol.AccountType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :Normal, 0
  field :AssetIssue, 1
  field :Contract, 2
end
defmodule Protocol.ReasonCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :REQUESTED, 0
  field :BAD_PROTOCOL, 2
  field :TOO_MANY_PEERS, 4
  field :DUPLICATE_PEER, 5
  field :INCOMPATIBLE_PROTOCOL, 6
  field :RANDOM_ELIMINATION, 7
  field :PEER_QUITING, 8
  field :UNEXPECTED_IDENTITY, 9
  field :LOCAL_IDENTITY, 10
  field :PING_TIMEOUT, 11
  field :USER_REASON, 16
  field :RESET, 17
  field :SYNC_FAIL, 18
  field :FETCH_FAIL, 19
  field :BAD_TX, 20
  field :BAD_BLOCK, 21
  field :FORKED, 22
  field :UNLINKABLE, 23
  field :INCOMPATIBLE_VERSION, 24
  field :INCOMPATIBLE_CHAIN, 25
  field :TIME_OUT, 32
  field :CONNECT_FAIL, 33
  field :TOO_MANY_PEERS_WITH_SAME_IP, 34
  field :LIGHT_NODE_SYNC_FAIL, 35
  field :BELOW_THAN_ME, 36
  field :NOT_WITNESS, 37
  field :NO_SUCH_MESSAGE, 38
  field :UNKNOWN, 255
end
defmodule Protocol.Proposal.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :PENDING, 0
  field :DISAPPROVED, 1
  field :APPROVED, 2
  field :CANCELED, 3
end
defmodule Protocol.MarketOrder.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ACTIVE, 0
  field :INACTIVE, 1
  field :CANCELED, 2
end
defmodule Protocol.Permission.PermissionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :Owner, 0
  field :Witness, 1
  field :Active, 2
end
defmodule Protocol.Transaction.Contract.ContractType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :AccountCreateContract, 0
  field :TransferContract, 1
  field :TransferAssetContract, 2
  field :VoteAssetContract, 3
  field :VoteWitnessContract, 4
  field :WitnessCreateContract, 5
  field :AssetIssueContract, 6
  field :WitnessUpdateContract, 8
  field :ParticipateAssetIssueContract, 9
  field :AccountUpdateContract, 10
  field :FreezeBalanceContract, 11
  field :UnfreezeBalanceContract, 12
  field :WithdrawBalanceContract, 13
  field :UnfreezeAssetContract, 14
  field :UpdateAssetContract, 15
  field :ProposalCreateContract, 16
  field :ProposalApproveContract, 17
  field :ProposalDeleteContract, 18
  field :SetAccountIdContract, 19
  field :CustomContract, 20
  field :CreateSmartContract, 30
  field :TriggerSmartContract, 31
  field :GetContract, 32
  field :UpdateSettingContract, 33
  field :ExchangeCreateContract, 41
  field :ExchangeInjectContract, 42
  field :ExchangeWithdrawContract, 43
  field :ExchangeTransactionContract, 44
  field :UpdateEnergyLimitContract, 45
  field :AccountPermissionUpdateContract, 46
  field :ClearABIContract, 48
  field :UpdateBrokerageContract, 49
  field :ShieldedTransferContract, 51
  field :MarketSellAssetContract, 52
  field :MarketCancelOrderContract, 53
  field :FreezeBalanceV2Contract, 54
  field :UnfreezeBalanceV2Contract, 55
  field :WithdrawExpireUnfreezeContract, 56
  field :DelegateResourceContract, 57
  field :UnDelegateResourceContract, 58
  field :CancelAllUnfreezeV2Contract, 59
end
defmodule Protocol.Transaction.Result.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :SUCESS, 0
  field :FAILED, 1
end
defmodule Protocol.Transaction.Result.ContractResult do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :DEFAULT, 0
  field :SUCCESS, 1
  field :REVERT, 2
  field :BAD_JUMP_DESTINATION, 3
  field :OUT_OF_MEMORY, 4
  field :PRECOMPILED_CONTRACT, 5
  field :STACK_TOO_SMALL, 6
  field :STACK_TOO_LARGE, 7
  field :ILLEGAL_OPERATION, 8
  field :STACK_OVERFLOW, 9
  field :OUT_OF_ENERGY, 10
  field :OUT_OF_TIME, 11
  field :JVM_STACK_OVER_FLOW, 12
  field :UNKNOWN, 13
  field :TRANSFER_FAILED, 14
  field :INVALID_CODE, 15
end
defmodule Protocol.TransactionInfo.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :SUCESS, 0
  field :FAILED, 1
end
defmodule Protocol.BlockInventory.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :SYNC, 0
  field :ADVTISE, 1
  field :FETCH, 2
end
defmodule Protocol.Inventory.InventoryType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :TRX, 0
  field :BLOCK, 1
end
defmodule Protocol.Items.ItemType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ERR, 0
  field :TRX, 1
  field :BLOCK, 2
  field :BLOCKHEADER, 3
end
defmodule Protocol.PBFTMessage.MsgType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :VIEW_CHANGE, 0
  field :REQUEST, 1
  field :PREPREPARE, 2
  field :PREPARE, 3
  field :COMMIT, 4
end
defmodule Protocol.PBFTMessage.DataType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :BLOCK, 0
  field :SRL, 1
end
defmodule Protocol.AccountId do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :name, 1, type: :bytes
  field :address, 2, type: :bytes
end
defmodule Protocol.Vote do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :vote_address, 1, type: :bytes, json_name: "voteAddress"
  field :vote_count, 2, type: :int64, json_name: "voteCount"
end
defmodule Protocol.Proposal.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :int64
  field :value, 2, type: :int64
end
defmodule Protocol.Proposal do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :proposal_id, 1, type: :int64, json_name: "proposalId"
  field :proposer_address, 2, type: :bytes, json_name: "proposerAddress"
  field :parameters, 3, repeated: true, type: Protocol.Proposal.ParametersEntry, map: true
  field :expiration_time, 4, type: :int64, json_name: "expirationTime"
  field :create_time, 5, type: :int64, json_name: "createTime"
  field :approvals, 6, repeated: true, type: :bytes
  field :state, 7, type: Protocol.Proposal.State, enum: true
end
defmodule Protocol.Exchange do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :exchange_id, 1, type: :int64, json_name: "exchangeId"
  field :creator_address, 2, type: :bytes, json_name: "creatorAddress"
  field :create_time, 3, type: :int64, json_name: "createTime"
  field :first_token_id, 6, type: :bytes, json_name: "firstTokenId"
  field :first_token_balance, 7, type: :int64, json_name: "firstTokenBalance"
  field :second_token_id, 8, type: :bytes, json_name: "secondTokenId"
  field :second_token_balance, 9, type: :int64, json_name: "secondTokenBalance"
end
defmodule Protocol.MarketOrder do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :order_id, 1, type: :bytes, json_name: "orderId"
  field :owner_address, 2, type: :bytes, json_name: "ownerAddress"
  field :create_time, 3, type: :int64, json_name: "createTime"
  field :sell_token_id, 4, type: :bytes, json_name: "sellTokenId"
  field :sell_token_quantity, 5, type: :int64, json_name: "sellTokenQuantity"
  field :buy_token_id, 6, type: :bytes, json_name: "buyTokenId"
  field :buy_token_quantity, 7, type: :int64, json_name: "buyTokenQuantity"
  field :sell_token_quantity_remain, 9, type: :int64, json_name: "sellTokenQuantityRemain"
  field :sell_token_quantity_return, 10, type: :int64, json_name: "sellTokenQuantityReturn"
  field :state, 11, type: Protocol.MarketOrder.State, enum: true
  field :prev, 12, type: :bytes
  field :next, 13, type: :bytes
end
defmodule Protocol.MarketOrderList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :orders, 1, repeated: true, type: Protocol.MarketOrder
end
defmodule Protocol.MarketOrderPairList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :orderPair, 1, repeated: true, type: Protocol.MarketOrderPair
end
defmodule Protocol.MarketOrderPair do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :sell_token_id, 1, type: :bytes, json_name: "sellTokenId"
  field :buy_token_id, 2, type: :bytes, json_name: "buyTokenId"
end
defmodule Protocol.MarketAccountOrder do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :orders, 2, repeated: true, type: :bytes
  field :count, 3, type: :int64
  field :total_count, 4, type: :int64, json_name: "totalCount"
end
defmodule Protocol.MarketPrice do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :sell_token_quantity, 1, type: :int64, json_name: "sellTokenQuantity"
  field :buy_token_quantity, 2, type: :int64, json_name: "buyTokenQuantity"
end
defmodule Protocol.MarketPriceList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :sell_token_id, 1, type: :bytes, json_name: "sellTokenId"
  field :buy_token_id, 2, type: :bytes, json_name: "buyTokenId"
  field :prices, 3, repeated: true, type: Protocol.MarketPrice
end
defmodule Protocol.MarketOrderIdList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :head, 1, type: :bytes
  field :tail, 2, type: :bytes
end
defmodule Protocol.ChainParameters.ChainParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.ChainParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :chainParameter, 1, repeated: true, type: Protocol.ChainParameters.ChainParameter
end
defmodule Protocol.Account.Frozen do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :frozen_balance, 1, type: :int64, json_name: "frozenBalance"
  field :expire_time, 2, type: :int64, json_name: "expireTime"
end
defmodule Protocol.Account.AssetEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.Account.AssetV2Entry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.Account.LatestAssetOperationTimeEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.Account.LatestAssetOperationTimeV2Entry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.Account.FreeAssetNetUsageEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.Account.FreeAssetNetUsageV2Entry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.Account.AccountResource do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :energy_usage, 1, type: :int64, json_name: "energyUsage"

  field :frozen_balance_for_energy, 2,
    type: Protocol.Account.Frozen,
    json_name: "frozenBalanceForEnergy"

  field :latest_consume_time_for_energy, 3, type: :int64, json_name: "latestConsumeTimeForEnergy"

  field :acquired_delegated_frozen_balance_for_energy, 4,
    type: :int64,
    json_name: "acquiredDelegatedFrozenBalanceForEnergy"

  field :delegated_frozen_balance_for_energy, 5,
    type: :int64,
    json_name: "delegatedFrozenBalanceForEnergy"

  field :storage_limit, 6, type: :int64, json_name: "storageLimit"
  field :storage_usage, 7, type: :int64, json_name: "storageUsage"
  field :latest_exchange_storage_time, 8, type: :int64, json_name: "latestExchangeStorageTime"
  field :energy_window_size, 9, type: :int64, json_name: "energyWindowSize"

  field :delegated_frozenV2_balance_for_energy, 10,
    type: :int64,
    json_name: "delegatedFrozenV2BalanceForEnergy"

  field :acquired_delegated_frozenV2_balance_for_energy, 11,
    type: :int64,
    json_name: "acquiredDelegatedFrozenV2BalanceForEnergy"

  field :energy_window_optimized, 12, type: :bool, json_name: "energyWindowOptimized"
end
defmodule Protocol.Account.FreezeV2 do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: Protocol.ResourceCode, enum: true
  field :amount, 2, type: :int64
end
defmodule Protocol.Account.UnFreezeV2 do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: Protocol.ResourceCode, enum: true
  field :unfreeze_amount, 3, type: :int64, json_name: "unfreezeAmount"
  field :unfreeze_expire_time, 4, type: :int64, json_name: "unfreezeExpireTime"
end
defmodule Protocol.Account do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :account_name, 1, type: :bytes, json_name: "accountName"
  field :type, 2, type: Protocol.AccountType, enum: true
  field :address, 3, type: :bytes
  field :balance, 4, type: :int64
  field :votes, 5, repeated: true, type: Protocol.Vote
  field :asset, 6, repeated: true, type: Protocol.Account.AssetEntry, map: true
  field :assetV2, 56, repeated: true, type: Protocol.Account.AssetV2Entry, map: true
  field :frozen, 7, repeated: true, type: Protocol.Account.Frozen
  field :net_usage, 8, type: :int64, json_name: "netUsage"

  field :acquired_delegated_frozen_balance_for_bandwidth, 41,
    type: :int64,
    json_name: "acquiredDelegatedFrozenBalanceForBandwidth"

  field :delegated_frozen_balance_for_bandwidth, 42,
    type: :int64,
    json_name: "delegatedFrozenBalanceForBandwidth"

  field :old_tron_power, 46, type: :int64, json_name: "oldTronPower"
  field :tron_power, 47, type: Protocol.Account.Frozen, json_name: "tronPower"
  field :asset_optimized, 60, type: :bool, json_name: "assetOptimized"
  field :create_time, 9, type: :int64, json_name: "createTime"
  field :latest_opration_time, 10, type: :int64, json_name: "latestOprationTime"
  field :allowance, 11, type: :int64
  field :latest_withdraw_time, 12, type: :int64, json_name: "latestWithdrawTime"
  field :code, 13, type: :bytes
  field :is_witness, 14, type: :bool, json_name: "isWitness"
  field :is_committee, 15, type: :bool, json_name: "isCommittee"

  field :frozen_supply, 16,
    repeated: true,
    type: Protocol.Account.Frozen,
    json_name: "frozenSupply"

  field :asset_issued_name, 17, type: :bytes, json_name: "assetIssuedName"
  field :asset_issued_ID, 57, type: :bytes, json_name: "assetIssuedID"

  field :latest_asset_operation_time, 18,
    repeated: true,
    type: Protocol.Account.LatestAssetOperationTimeEntry,
    json_name: "latestAssetOperationTime",
    map: true

  field :latest_asset_operation_timeV2, 58,
    repeated: true,
    type: Protocol.Account.LatestAssetOperationTimeV2Entry,
    json_name: "latestAssetOperationTimeV2",
    map: true

  field :free_net_usage, 19, type: :int64, json_name: "freeNetUsage"

  field :free_asset_net_usage, 20,
    repeated: true,
    type: Protocol.Account.FreeAssetNetUsageEntry,
    json_name: "freeAssetNetUsage",
    map: true

  field :free_asset_net_usageV2, 59,
    repeated: true,
    type: Protocol.Account.FreeAssetNetUsageV2Entry,
    json_name: "freeAssetNetUsageV2",
    map: true

  field :latest_consume_time, 21, type: :int64, json_name: "latestConsumeTime"
  field :latest_consume_free_time, 22, type: :int64, json_name: "latestConsumeFreeTime"
  field :account_id, 23, type: :bytes, json_name: "accountId"
  field :net_window_size, 24, type: :int64, json_name: "netWindowSize"
  field :net_window_optimized, 25, type: :bool, json_name: "netWindowOptimized"

  field :account_resource, 26,
    type: Protocol.Account.AccountResource,
    json_name: "accountResource"

  field :codeHash, 30, type: :bytes
  field :owner_permission, 31, type: Protocol.Permission, json_name: "ownerPermission"
  field :witness_permission, 32, type: Protocol.Permission, json_name: "witnessPermission"

  field :active_permission, 33,
    repeated: true,
    type: Protocol.Permission,
    json_name: "activePermission"

  field :frozenV2, 34, repeated: true, type: Protocol.Account.FreezeV2
  field :unfrozenV2, 35, repeated: true, type: Protocol.Account.UnFreezeV2

  field :delegated_frozenV2_balance_for_bandwidth, 36,
    type: :int64,
    json_name: "delegatedFrozenV2BalanceForBandwidth"

  field :acquired_delegated_frozenV2_balance_for_bandwidth, 37,
    type: :int64,
    json_name: "acquiredDelegatedFrozenV2BalanceForBandwidth"
end
defmodule Protocol.Key do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: :bytes
  field :weight, 2, type: :int64
end
defmodule Protocol.DelegatedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :from, 1, type: :bytes
  field :to, 2, type: :bytes
  field :frozen_balance_for_bandwidth, 3, type: :int64, json_name: "frozenBalanceForBandwidth"
  field :frozen_balance_for_energy, 4, type: :int64, json_name: "frozenBalanceForEnergy"
  field :expire_time_for_bandwidth, 5, type: :int64, json_name: "expireTimeForBandwidth"
  field :expire_time_for_energy, 6, type: :int64, json_name: "expireTimeForEnergy"
end
defmodule Protocol.Authority do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :account, 1, type: Protocol.AccountId
  field :permission_name, 2, type: :bytes, json_name: "permissionName"
end
defmodule Protocol.Permission do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: Protocol.Permission.PermissionType, enum: true
  field :id, 2, type: :int32
  field :permission_name, 3, type: :string, json_name: "permissionName"
  field :threshold, 4, type: :int64
  field :parent_id, 5, type: :int32, json_name: "parentId"
  field :operations, 6, type: :bytes
  field :keys, 7, repeated: true, type: Protocol.Key
end
defmodule Protocol.Witness do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: :bytes
  field :voteCount, 2, type: :int64
  field :pubKey, 3, type: :bytes
  field :url, 4, type: :string
  field :totalProduced, 5, type: :int64
  field :totalMissed, 6, type: :int64
  field :latestBlockNum, 7, type: :int64
  field :latestSlotNum, 8, type: :int64
  field :isJobs, 9, type: :bool
end
defmodule Protocol.Votes do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: :bytes
  field :old_votes, 2, repeated: true, type: Protocol.Vote, json_name: "oldVotes"
  field :new_votes, 3, repeated: true, type: Protocol.Vote, json_name: "newVotes"
end
defmodule Protocol.TXOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :value, 1, type: :int64
  field :pubKeyHash, 2, type: :bytes
end
defmodule Protocol.TXInput.Raw do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :txID, 1, type: :bytes
  field :vout, 2, type: :int64
  field :pubKey, 3, type: :bytes
end
defmodule Protocol.TXInput do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :raw_data, 1, type: Protocol.TXInput.Raw, json_name: "rawData"
  field :signature, 4, type: :bytes
end
defmodule Protocol.TXOutputs do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :outputs, 1, repeated: true, type: Protocol.TXOutput
end
defmodule Protocol.ResourceReceipt do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :energy_usage, 1, type: :int64, json_name: "energyUsage"
  field :energy_fee, 2, type: :int64, json_name: "energyFee"
  field :origin_energy_usage, 3, type: :int64, json_name: "originEnergyUsage"
  field :energy_usage_total, 4, type: :int64, json_name: "energyUsageTotal"
  field :net_usage, 5, type: :int64, json_name: "netUsage"
  field :net_fee, 6, type: :int64, json_name: "netFee"
  field :result, 7, type: Protocol.Transaction.Result.ContractResult, enum: true
  field :energy_penalty_total, 8, type: :int64, json_name: "energyPenaltyTotal"
end
defmodule Protocol.MarketOrderDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :makerOrderId, 1, type: :bytes
  field :takerOrderId, 2, type: :bytes
  field :fillSellQuantity, 3, type: :int64
  field :fillBuyQuantity, 4, type: :int64
end
defmodule Protocol.Transaction.Contract do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: Protocol.Transaction.Contract.ContractType, enum: true
  field :parameter, 2, type: Google.Protobuf.Any
  field :ContractName, 4, type: :bytes
  field :Permission_id, 5, type: :int32, json_name: "PermissionId"
end
defmodule Protocol.Transaction.Result.CancelUnfreezeV2AmountEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.Transaction.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :fee, 1, type: :int64
  field :ret, 2, type: Protocol.Transaction.Result.Code, enum: true
  field :contractRet, 3, type: Protocol.Transaction.Result.ContractResult, enum: true
  field :assetIssueID, 14, type: :string
  field :withdraw_amount, 15, type: :int64, json_name: "withdrawAmount"
  field :unfreeze_amount, 16, type: :int64, json_name: "unfreezeAmount"
  field :exchange_received_amount, 18, type: :int64, json_name: "exchangeReceivedAmount"

  field :exchange_inject_another_amount, 19,
    type: :int64,
    json_name: "exchangeInjectAnotherAmount"

  field :exchange_withdraw_another_amount, 20,
    type: :int64,
    json_name: "exchangeWithdrawAnotherAmount"

  field :exchange_id, 21, type: :int64, json_name: "exchangeId"
  field :shielded_transaction_fee, 22, type: :int64, json_name: "shieldedTransactionFee"
  field :orderId, 25, type: :bytes
  field :orderDetails, 26, repeated: true, type: Protocol.MarketOrderDetail
  field :withdraw_expire_amount, 27, type: :int64, json_name: "withdrawExpireAmount"

  field :cancel_unfreezeV2_amount, 28,
    repeated: true,
    type: Protocol.Transaction.Result.CancelUnfreezeV2AmountEntry,
    json_name: "cancelUnfreezeV2Amount",
    map: true
end
defmodule Protocol.Transaction.Raw do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ref_block_bytes, 1, type: :bytes, json_name: "refBlockBytes"
  field :ref_block_num, 3, type: :int64, json_name: "refBlockNum"
  field :ref_block_hash, 4, type: :bytes, json_name: "refBlockHash"
  field :expiration, 8, type: :int64
  field :auths, 9, repeated: true, type: Protocol.Authority
  field :data, 10, type: :bytes
  field :contract, 11, repeated: true, type: Protocol.Transaction.Contract
  field :timestamp, 14, type: :int64
  field :fee_limit, 18, type: :int64, json_name: "feeLimit"
end
defmodule Protocol.Transaction do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :raw_data, 1, type: Protocol.Transaction.Raw, json_name: "rawData"
  field :signature, 2, repeated: true, type: :bytes
  field :ret, 5, repeated: true, type: Protocol.Transaction.Result
end
defmodule Protocol.TransactionInfo.Log do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: :bytes
  field :topics, 2, repeated: true, type: :bytes
  field :data, 3, type: :bytes
end
defmodule Protocol.TransactionInfo.CancelUnfreezeV2AmountEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.TransactionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :id, 1, type: :bytes
  field :fee, 2, type: :int64
  field :blockNumber, 3, type: :int64
  field :blockTimeStamp, 4, type: :int64
  field :contractResult, 5, repeated: true, type: :bytes
  field :contract_address, 6, type: :bytes, json_name: "contractAddress"
  field :receipt, 7, type: Protocol.ResourceReceipt
  field :log, 8, repeated: true, type: Protocol.TransactionInfo.Log
  field :result, 9, type: Protocol.TransactionInfo.Code, enum: true
  field :resMessage, 10, type: :bytes
  field :assetIssueID, 14, type: :string
  field :withdraw_amount, 15, type: :int64, json_name: "withdrawAmount"
  field :unfreeze_amount, 16, type: :int64, json_name: "unfreezeAmount"

  field :internal_transactions, 17,
    repeated: true,
    type: Protocol.InternalTransaction,
    json_name: "internalTransactions"

  field :exchange_received_amount, 18, type: :int64, json_name: "exchangeReceivedAmount"

  field :exchange_inject_another_amount, 19,
    type: :int64,
    json_name: "exchangeInjectAnotherAmount"

  field :exchange_withdraw_another_amount, 20,
    type: :int64,
    json_name: "exchangeWithdrawAnotherAmount"

  field :exchange_id, 21, type: :int64, json_name: "exchangeId"
  field :shielded_transaction_fee, 22, type: :int64, json_name: "shieldedTransactionFee"
  field :orderId, 25, type: :bytes
  field :orderDetails, 26, repeated: true, type: Protocol.MarketOrderDetail
  field :packingFee, 27, type: :int64
  field :withdraw_expire_amount, 28, type: :int64, json_name: "withdrawExpireAmount"

  field :cancel_unfreezeV2_amount, 29,
    repeated: true,
    type: Protocol.TransactionInfo.CancelUnfreezeV2AmountEntry,
    json_name: "cancelUnfreezeV2Amount",
    map: true
end
defmodule Protocol.TransactionRet do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :blockNumber, 1, type: :int64
  field :blockTimeStamp, 2, type: :int64
  field :transactioninfo, 3, repeated: true, type: Protocol.TransactionInfo
end
defmodule Protocol.Transactions do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transactions, 1, repeated: true, type: Protocol.Transaction
end
defmodule Protocol.BlockHeader.Raw do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :timestamp, 1, type: :int64
  field :txTrieRoot, 2, type: :bytes
  field :parentHash, 3, type: :bytes
  field :number, 7, type: :int64
  field :witness_id, 8, type: :int64, json_name: "witnessId"
  field :witness_address, 9, type: :bytes, json_name: "witnessAddress"
  field :version, 10, type: :int32
  field :accountStateRoot, 11, type: :bytes
end
defmodule Protocol.BlockHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :raw_data, 1, type: Protocol.BlockHeader.Raw, json_name: "rawData"
  field :witness_signature, 2, type: :bytes, json_name: "witnessSignature"
end
defmodule Protocol.Block do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transactions, 1, repeated: true, type: Protocol.Transaction
  field :block_header, 2, type: Protocol.BlockHeader, json_name: "blockHeader"
end
defmodule Protocol.ChainInventory.BlockId do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :hash, 1, type: :bytes
  field :number, 2, type: :int64
end
defmodule Protocol.ChainInventory do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ids, 1, repeated: true, type: Protocol.ChainInventory.BlockId
  field :remain_num, 2, type: :int64, json_name: "remainNum"
end
defmodule Protocol.BlockInventory.BlockId do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :hash, 1, type: :bytes
  field :number, 2, type: :int64
end
defmodule Protocol.BlockInventory do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ids, 1, repeated: true, type: Protocol.BlockInventory.BlockId
  field :type, 2, type: Protocol.BlockInventory.Type, enum: true
end
defmodule Protocol.Inventory do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: Protocol.Inventory.InventoryType, enum: true
  field :ids, 2, repeated: true, type: :bytes
end
defmodule Protocol.Items do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: Protocol.Items.ItemType, enum: true
  field :blocks, 2, repeated: true, type: Protocol.Block
  field :block_headers, 3, repeated: true, type: Protocol.BlockHeader, json_name: "blockHeaders"
  field :transactions, 4, repeated: true, type: Protocol.Transaction
end
defmodule Protocol.DynamicProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :last_solidity_block_num, 1, type: :int64, json_name: "lastSolidityBlockNum"
end
defmodule Protocol.DisconnectMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :reason, 1, type: Protocol.ReasonCode, enum: true
end
defmodule Protocol.HelloMessage.BlockId do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :hash, 1, type: :bytes
  field :number, 2, type: :int64
end
defmodule Protocol.HelloMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :from, 1, type: Protocol.Endpoint
  field :version, 2, type: :int32
  field :timestamp, 3, type: :int64
  field :genesisBlockId, 4, type: Protocol.HelloMessage.BlockId
  field :solidBlockId, 5, type: Protocol.HelloMessage.BlockId
  field :headBlockId, 6, type: Protocol.HelloMessage.BlockId
  field :address, 7, type: :bytes
  field :signature, 8, type: :bytes
  field :nodeType, 9, type: :int32
  field :lowestBlockNum, 10, type: :int64
  field :codeVersion, 11, type: :bytes
end
defmodule Protocol.InternalTransaction.CallValueInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :callValue, 1, type: :int64
  field :tokenId, 2, type: :string
end
defmodule Protocol.InternalTransaction do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :hash, 1, type: :bytes
  field :caller_address, 2, type: :bytes, json_name: "callerAddress"
  field :transferTo_address, 3, type: :bytes, json_name: "transferToAddress"
  field :callValueInfo, 4, repeated: true, type: Protocol.InternalTransaction.CallValueInfo
  field :note, 5, type: :bytes
  field :rejected, 6, type: :bool
  field :extra, 7, type: :string
end
defmodule Protocol.DelegatedResourceAccountIndex do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :account, 1, type: :bytes
  field :fromAccounts, 2, repeated: true, type: :bytes
  field :toAccounts, 3, repeated: true, type: :bytes
  field :timestamp, 4, type: :int64
end
defmodule Protocol.NodeInfo.CheatWitnessInfoMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Protocol.NodeInfo.PeerInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :lastSyncBlock, 1, type: :string
  field :remainNum, 2, type: :int64
  field :lastBlockUpdateTime, 3, type: :int64
  field :syncFlag, 4, type: :bool
  field :headBlockTimeWeBothHave, 5, type: :int64
  field :needSyncFromPeer, 6, type: :bool
  field :needSyncFromUs, 7, type: :bool
  field :host, 8, type: :string
  field :port, 9, type: :int32
  field :nodeId, 10, type: :string
  field :connectTime, 11, type: :int64
  field :avgLatency, 12, type: :double
  field :syncToFetchSize, 13, type: :int32
  field :syncToFetchSizePeekNum, 14, type: :int64
  field :syncBlockRequestedSize, 15, type: :int32
  field :unFetchSynNum, 16, type: :int64
  field :blockInPorcSize, 17, type: :int32
  field :headBlockWeBothHave, 18, type: :string
  field :isActive, 19, type: :bool
  field :score, 20, type: :int32
  field :nodeCount, 21, type: :int32
  field :inFlow, 22, type: :int64
  field :disconnectTimes, 23, type: :int32
  field :localDisconnectReason, 24, type: :string
  field :remoteDisconnectReason, 25, type: :string
end
defmodule Protocol.NodeInfo.ConfigNodeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :codeVersion, 1, type: :string
  field :p2pVersion, 2, type: :string
  field :listenPort, 3, type: :int32
  field :discoverEnable, 4, type: :bool
  field :activeNodeSize, 5, type: :int32
  field :passiveNodeSize, 6, type: :int32
  field :sendNodeSize, 7, type: :int32
  field :maxConnectCount, 8, type: :int32
  field :sameIpMaxConnectCount, 9, type: :int32
  field :backupListenPort, 10, type: :int32
  field :backupMemberSize, 11, type: :int32
  field :backupPriority, 12, type: :int32
  field :dbVersion, 13, type: :int32
  field :minParticipationRate, 14, type: :int32
  field :supportConstant, 15, type: :bool
  field :minTimeRatio, 16, type: :double
  field :maxTimeRatio, 17, type: :double
  field :allowCreationOfContracts, 18, type: :int64
  field :allowAdaptiveEnergy, 19, type: :int64
end
defmodule Protocol.NodeInfo.MachineInfo.MemoryDescInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :name, 1, type: :string
  field :initSize, 2, type: :int64
  field :useSize, 3, type: :int64
  field :maxSize, 4, type: :int64
  field :useRate, 5, type: :double
end
defmodule Protocol.NodeInfo.MachineInfo.DeadLockThreadInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :name, 1, type: :string
  field :lockName, 2, type: :string
  field :lockOwner, 3, type: :string
  field :state, 4, type: :string
  field :blockTime, 5, type: :int64
  field :waitTime, 6, type: :int64
  field :stackTrace, 7, type: :string
end
defmodule Protocol.NodeInfo.MachineInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :threadCount, 1, type: :int32
  field :deadLockThreadCount, 2, type: :int32
  field :cpuCount, 3, type: :int32
  field :totalMemory, 4, type: :int64
  field :freeMemory, 5, type: :int64
  field :cpuRate, 6, type: :double
  field :javaVersion, 7, type: :string
  field :osName, 8, type: :string
  field :jvmTotalMemory, 9, type: :int64
  field :jvmFreeMemory, 10, type: :int64
  field :processCpuRate, 11, type: :double

  field :memoryDescInfoList, 12,
    repeated: true,
    type: Protocol.NodeInfo.MachineInfo.MemoryDescInfo

  field :deadLockThreadInfoList, 13,
    repeated: true,
    type: Protocol.NodeInfo.MachineInfo.DeadLockThreadInfo
end
defmodule Protocol.NodeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :beginSyncNum, 1, type: :int64
  field :block, 2, type: :string
  field :solidityBlock, 3, type: :string
  field :currentConnectCount, 4, type: :int32
  field :activeConnectCount, 5, type: :int32
  field :passiveConnectCount, 6, type: :int32
  field :totalFlow, 7, type: :int64
  field :peerInfoList, 8, repeated: true, type: Protocol.NodeInfo.PeerInfo
  field :configNodeInfo, 9, type: Protocol.NodeInfo.ConfigNodeInfo
  field :machineInfo, 10, type: Protocol.NodeInfo.MachineInfo

  field :cheatWitnessInfoMap, 11,
    repeated: true,
    type: Protocol.NodeInfo.CheatWitnessInfoMapEntry,
    map: true
end
defmodule Protocol.MetricsInfo.NodeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ip, 1, type: :string
  field :nodeType, 2, type: :int32
  field :version, 3, type: :string
  field :backupStatus, 4, type: :int32
end
defmodule Protocol.MetricsInfo.BlockChainInfo.Witness do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: :string
  field :version, 2, type: :int32
end
defmodule Protocol.MetricsInfo.BlockChainInfo.DupWitness do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: :string
  field :blockNum, 2, type: :int64
  field :count, 3, type: :int32
end
defmodule Protocol.MetricsInfo.BlockChainInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :headBlockNum, 1, type: :int64
  field :headBlockTimestamp, 2, type: :int64
  field :headBlockHash, 3, type: :string
  field :forkCount, 4, type: :int32
  field :failForkCount, 5, type: :int32
  field :blockProcessTime, 6, type: Protocol.MetricsInfo.RateInfo
  field :tps, 7, type: Protocol.MetricsInfo.RateInfo
  field :transactionCacheSize, 8, type: :int32
  field :missedTransaction, 9, type: Protocol.MetricsInfo.RateInfo
  field :witnesses, 10, repeated: true, type: Protocol.MetricsInfo.BlockChainInfo.Witness
  field :failProcessBlockNum, 11, type: :int64
  field :failProcessBlockReason, 12, type: :string
  field :dupWitness, 13, repeated: true, type: Protocol.MetricsInfo.BlockChainInfo.DupWitness
end
defmodule Protocol.MetricsInfo.RateInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :count, 1, type: :int64
  field :meanRate, 2, type: :double
  field :oneMinuteRate, 3, type: :double
  field :fiveMinuteRate, 4, type: :double
  field :fifteenMinuteRate, 5, type: :double
end
defmodule Protocol.MetricsInfo.NetInfo.ApiInfo.ApiDetailInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :name, 1, type: :string
  field :qps, 2, type: Protocol.MetricsInfo.RateInfo
  field :failQps, 3, type: Protocol.MetricsInfo.RateInfo
  field :outTraffic, 4, type: Protocol.MetricsInfo.RateInfo
end
defmodule Protocol.MetricsInfo.NetInfo.ApiInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :qps, 1, type: Protocol.MetricsInfo.RateInfo
  field :failQps, 2, type: Protocol.MetricsInfo.RateInfo
  field :outTraffic, 3, type: Protocol.MetricsInfo.RateInfo
  field :detail, 4, repeated: true, type: Protocol.MetricsInfo.NetInfo.ApiInfo.ApiDetailInfo
end
defmodule Protocol.MetricsInfo.NetInfo.DisconnectionDetailInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :reason, 1, type: :string
  field :count, 2, type: :int32
end
defmodule Protocol.MetricsInfo.NetInfo.LatencyInfo.LatencyDetailInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :witness, 1, type: :string
  field :top99, 2, type: :int32
  field :top95, 3, type: :int32
  field :top75, 4, type: :int32
  field :count, 5, type: :int32
  field :delay1S, 6, type: :int32
  field :delay2S, 7, type: :int32
  field :delay3S, 8, type: :int32
end
defmodule Protocol.MetricsInfo.NetInfo.LatencyInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :top99, 1, type: :int32
  field :top95, 2, type: :int32
  field :top75, 3, type: :int32
  field :totalCount, 4, type: :int32
  field :delay1S, 5, type: :int32
  field :delay2S, 6, type: :int32
  field :delay3S, 7, type: :int32

  field :detail, 8,
    repeated: true,
    type: Protocol.MetricsInfo.NetInfo.LatencyInfo.LatencyDetailInfo
end
defmodule Protocol.MetricsInfo.NetInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :errorProtoCount, 1, type: :int32
  field :api, 2, type: Protocol.MetricsInfo.NetInfo.ApiInfo
  field :connectionCount, 3, type: :int32
  field :validConnectionCount, 4, type: :int32
  field :tcpInTraffic, 5, type: Protocol.MetricsInfo.RateInfo
  field :tcpOutTraffic, 6, type: Protocol.MetricsInfo.RateInfo
  field :disconnectionCount, 7, type: :int32

  field :disconnectionDetail, 8,
    repeated: true,
    type: Protocol.MetricsInfo.NetInfo.DisconnectionDetailInfo

  field :udpInTraffic, 9, type: Protocol.MetricsInfo.RateInfo
  field :udpOutTraffic, 10, type: Protocol.MetricsInfo.RateInfo
  field :latency, 11, type: Protocol.MetricsInfo.NetInfo.LatencyInfo
end
defmodule Protocol.MetricsInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :interval, 1, type: :int64
  field :node, 2, type: Protocol.MetricsInfo.NodeInfo
  field :blockchain, 3, type: Protocol.MetricsInfo.BlockChainInfo
  field :net, 4, type: Protocol.MetricsInfo.NetInfo
end
defmodule Protocol.PBFTMessage.Raw do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :msg_type, 1, type: Protocol.PBFTMessage.MsgType, json_name: "msgType", enum: true
  field :data_type, 2, type: Protocol.PBFTMessage.DataType, json_name: "dataType", enum: true
  field :view_n, 3, type: :int64, json_name: "viewN"
  field :epoch, 4, type: :int64
  field :data, 5, type: :bytes
end
defmodule Protocol.PBFTMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :raw_data, 1, type: Protocol.PBFTMessage.Raw, json_name: "rawData"
  field :signature, 2, type: :bytes
end
defmodule Protocol.PBFTCommitResult do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :data, 1, type: :bytes
  field :signature, 2, repeated: true, type: :bytes
end
defmodule Protocol.SRL do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :srAddress, 1, repeated: true, type: :bytes
end
