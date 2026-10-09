defmodule Protocol.Return.ResponseCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :SUCCESS, 0
  field :SIGERROR, 1
  field :CONTRACT_VALIDATE_ERROR, 2
  field :CONTRACT_EXE_ERROR, 3
  field :BANDWITH_ERROR, 4
  field :DUP_TRANSACTION_ERROR, 5
  field :TAPOS_ERROR, 6
  field :TOO_BIG_TRANSACTION_ERROR, 7
  field :TRANSACTION_EXPIRATION_ERROR, 8
  field :SERVER_BUSY, 9
  field :NO_CONNECTION, 10
  field :NOT_ENOUGH_EFFECTIVE_CONNECTION, 11
  field :BLOCK_UNSOLIDIFIED, 12
  field :OTHER_ERROR, 20
end
defmodule Protocol.TransactionSignWeight.Result.ResponseCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ENOUGH_PERMISSION, 0
  field :NOT_ENOUGH_PERMISSION, 1
  field :SIGNATURE_FORMAT_ERROR, 2
  field :COMPUTE_ADDRESS_ERROR, 3
  field :PERMISSION_ERROR, 4
  field :OTHER_ERROR, 20
end
defmodule Protocol.TransactionApprovedList.Result.ResponseCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :SUCCESS, 0
  field :SIGNATURE_FORMAT_ERROR, 1
  field :COMPUTE_ADDRESS_ERROR, 2
  field :OTHER_ERROR, 20
end
defmodule Protocol.Return do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :result, 1, type: :bool
  field :code, 2, type: Protocol.Return.ResponseCode, enum: true
  field :message, 3, type: :bytes
end
defmodule Protocol.BlockReference do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :block_num, 1, type: :int64, json_name: "blockNum"
  field :block_hash, 2, type: :bytes, json_name: "blockHash"
end
defmodule Protocol.WitnessList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :witnesses, 1, repeated: true, type: Protocol.Witness
end
defmodule Protocol.ProposalList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :proposals, 1, repeated: true, type: Protocol.Proposal
end
defmodule Protocol.ExchangeList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :exchanges, 1, repeated: true, type: Protocol.Exchange
end
defmodule Protocol.AssetIssueList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :assetIssue, 1, repeated: true, type: Protocol.AssetIssueContract
end
defmodule Protocol.BlockList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :block, 1, repeated: true, type: Protocol.Block
end
defmodule Protocol.TransactionList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transaction, 1, repeated: true, type: Protocol.Transaction
end
defmodule Protocol.TransactionIdList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :txId, 1, repeated: true, type: :string
end
defmodule Protocol.DelegatedResourceMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :fromAddress, 1, type: :bytes
  field :toAddress, 2, type: :bytes
end
defmodule Protocol.DelegatedResourceList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :delegatedResource, 1, repeated: true, type: Protocol.DelegatedResource
end
defmodule Protocol.GetAvailableUnfreezeCountRequestMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
end
defmodule Protocol.GetAvailableUnfreezeCountResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :count, 1, type: :int64
end
defmodule Protocol.CanDelegatedMaxSizeRequestMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :type, 1, type: :int32
  field :owner_address, 2, type: :bytes, json_name: "ownerAddress"
end
defmodule Protocol.CanDelegatedMaxSizeResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :max_size, 1, type: :int64, json_name: "maxSize"
end
defmodule Protocol.CanWithdrawUnfreezeAmountRequestMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :owner_address, 1, type: :bytes, json_name: "ownerAddress"
  field :timestamp, 2, type: :int64
end
defmodule Protocol.CanWithdrawUnfreezeAmountResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :amount, 1, type: :int64
end
defmodule Protocol.PricesResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :prices, 1, type: :string
end
defmodule Protocol.NodeList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :nodes, 1, repeated: true, type: Protocol.Node
end
defmodule Protocol.Node do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :address, 1, type: Protocol.Address
end
defmodule Protocol.Address do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :host, 1, type: :bytes
  field :port, 2, type: :int32
end
defmodule Protocol.EmptyMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"
end
defmodule Protocol.NumberMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :num, 1, type: :int64
end
defmodule Protocol.BytesMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :value, 1, type: :bytes
end
defmodule Protocol.TimeMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :beginInMilliseconds, 1, type: :int64
  field :endInMilliseconds, 2, type: :int64
end
defmodule Protocol.BlockReq do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :id_or_num, 1, type: :string, json_name: "idOrNum"
  field :detail, 2, type: :bool
end
defmodule Protocol.BlockLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :startNum, 1, type: :int64
  field :endNum, 2, type: :int64
end
defmodule Protocol.TransactionLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transactionId, 1, type: :bytes
  field :limitNum, 2, type: :int64
end
defmodule Protocol.AccountPaginated do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :account, 1, type: Protocol.Account
  field :offset, 2, type: :int64
  field :limit, 3, type: :int64
end
defmodule Protocol.TimePaginatedMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :timeMessage, 1, type: Protocol.TimeMessage
  field :offset, 2, type: :int64
  field :limit, 3, type: :int64
end
defmodule Protocol.AccountNetMessage.AssetNetUsedEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.AccountNetMessage.AssetNetLimitEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.AccountNetMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :freeNetUsed, 1, type: :int64
  field :freeNetLimit, 2, type: :int64
  field :NetUsed, 3, type: :int64
  field :NetLimit, 4, type: :int64

  field :assetNetUsed, 5,
    repeated: true,
    type: Protocol.AccountNetMessage.AssetNetUsedEntry,
    map: true

  field :assetNetLimit, 6,
    repeated: true,
    type: Protocol.AccountNetMessage.AssetNetLimitEntry,
    map: true

  field :TotalNetLimit, 7, type: :int64
  field :TotalNetWeight, 8, type: :int64
end
defmodule Protocol.AccountResourceMessage.AssetNetUsedEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.AccountResourceMessage.AssetNetLimitEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :key, 1, type: :string
  field :value, 2, type: :int64
end
defmodule Protocol.AccountResourceMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :freeNetUsed, 1, type: :int64
  field :freeNetLimit, 2, type: :int64
  field :NetUsed, 3, type: :int64
  field :NetLimit, 4, type: :int64

  field :assetNetUsed, 5,
    repeated: true,
    type: Protocol.AccountResourceMessage.AssetNetUsedEntry,
    map: true

  field :assetNetLimit, 6,
    repeated: true,
    type: Protocol.AccountResourceMessage.AssetNetLimitEntry,
    map: true

  field :TotalNetLimit, 7, type: :int64
  field :TotalNetWeight, 8, type: :int64
  field :TotalTronPowerWeight, 9, type: :int64
  field :tronPowerUsed, 10, type: :int64
  field :tronPowerLimit, 11, type: :int64
  field :EnergyUsed, 13, type: :int64
  field :EnergyLimit, 14, type: :int64
  field :TotalEnergyLimit, 15, type: :int64
  field :TotalEnergyWeight, 16, type: :int64
  field :storageUsed, 21, type: :int64
  field :storageLimit, 22, type: :int64
end
defmodule Protocol.PaginatedMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :offset, 1, type: :int64
  field :limit, 2, type: :int64
end
defmodule Protocol.TransactionExtention do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transaction, 1, type: Protocol.Transaction
  field :txid, 2, type: :bytes
  field :constant_result, 3, repeated: true, type: :bytes, json_name: "constantResult"
  field :result, 4, type: Protocol.Return
  field :energy_used, 5, type: :int64, json_name: "energyUsed"
  field :logs, 6, repeated: true, type: Protocol.TransactionInfo.Log

  field :internal_transactions, 7,
    repeated: true,
    type: Protocol.InternalTransaction,
    json_name: "internalTransactions"

  field :energy_penalty, 8, type: :int64, json_name: "energyPenalty"
end
defmodule Protocol.EstimateEnergyMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :result, 1, type: Protocol.Return
  field :energy_required, 2, type: :int64, json_name: "energyRequired"
end
defmodule Protocol.BlockExtention do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transactions, 1, repeated: true, type: Protocol.TransactionExtention
  field :block_header, 2, type: Protocol.BlockHeader, json_name: "blockHeader"
  field :blockid, 3, type: :bytes
end
defmodule Protocol.BlockListExtention do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :block, 1, repeated: true, type: Protocol.BlockExtention
end
defmodule Protocol.TransactionListExtention do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transaction, 1, repeated: true, type: Protocol.TransactionExtention
end
defmodule Protocol.BlockIncrementalMerkleTree do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :number, 1, type: :int64
  field :merkleTree, 2, type: Protocol.IncrementalMerkleTree
end
defmodule Protocol.TransactionSignWeight.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :code, 1, type: Protocol.TransactionSignWeight.Result.ResponseCode, enum: true
  field :message, 2, type: :string
end
defmodule Protocol.TransactionSignWeight do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :permission, 1, type: Protocol.Permission
  field :approved_list, 2, repeated: true, type: :bytes, json_name: "approvedList"
  field :current_weight, 3, type: :int64, json_name: "currentWeight"
  field :result, 4, type: Protocol.TransactionSignWeight.Result
  field :transaction, 5, type: Protocol.TransactionExtention
end
defmodule Protocol.TransactionApprovedList.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :code, 1, type: Protocol.TransactionApprovedList.Result.ResponseCode, enum: true
  field :message, 2, type: :string
end
defmodule Protocol.TransactionApprovedList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :approved_list, 2, repeated: true, type: :bytes, json_name: "approvedList"
  field :result, 4, type: Protocol.TransactionApprovedList.Result
  field :transaction, 5, type: Protocol.TransactionExtention
end
defmodule Protocol.IvkDecryptParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :start_block_index, 1, type: :int64, json_name: "startBlockIndex"
  field :end_block_index, 2, type: :int64, json_name: "endBlockIndex"
  field :ivk, 3, type: :bytes
end
defmodule Protocol.IvkDecryptAndMarkParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :start_block_index, 1, type: :int64, json_name: "startBlockIndex"
  field :end_block_index, 2, type: :int64, json_name: "endBlockIndex"
  field :ivk, 5, type: :bytes
  field :ak, 3, type: :bytes
  field :nk, 4, type: :bytes
end
defmodule Protocol.OvkDecryptParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :start_block_index, 1, type: :int64, json_name: "startBlockIndex"
  field :end_block_index, 2, type: :int64, json_name: "endBlockIndex"
  field :ovk, 3, type: :bytes
end
defmodule Protocol.DecryptNotes.NoteTx do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 1, type: Protocol.Note
  field :txid, 2, type: :bytes
  field :index, 3, type: :int32
end
defmodule Protocol.DecryptNotes do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :noteTxs, 1, repeated: true, type: Protocol.DecryptNotes.NoteTx
end
defmodule Protocol.DecryptNotesMarked.NoteTx do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 1, type: Protocol.Note
  field :txid, 2, type: :bytes
  field :index, 3, type: :int32
  field :is_spend, 4, type: :bool, json_name: "isSpend"
end
defmodule Protocol.DecryptNotesMarked do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :noteTxs, 1, repeated: true, type: Protocol.DecryptNotesMarked.NoteTx
end
defmodule Protocol.Note do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :value, 1, type: :int64
  field :payment_address, 2, type: :string, json_name: "paymentAddress"
  field :rcm, 3, type: :bytes
  field :memo, 4, type: :bytes
end
defmodule Protocol.SpendNote do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 3, type: Protocol.Note
  field :alpha, 4, type: :bytes
  field :voucher, 5, type: Protocol.IncrementalMerkleVoucher
  field :path, 6, type: :bytes
end
defmodule Protocol.ReceiveNote do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 1, type: Protocol.Note
end
defmodule Protocol.PrivateParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transparent_from_address, 1, type: :bytes, json_name: "transparentFromAddress"
  field :ask, 2, type: :bytes
  field :nsk, 3, type: :bytes
  field :ovk, 4, type: :bytes
  field :from_amount, 5, type: :int64, json_name: "fromAmount"
  field :shielded_spends, 6, repeated: true, type: Protocol.SpendNote, json_name: "shieldedSpends"

  field :shielded_receives, 7,
    repeated: true,
    type: Protocol.ReceiveNote,
    json_name: "shieldedReceives"

  field :transparent_to_address, 8, type: :bytes, json_name: "transparentToAddress"
  field :to_amount, 9, type: :int64, json_name: "toAmount"
  field :timeout, 10, type: :int64
end
defmodule Protocol.PrivateParametersWithoutAsk do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transparent_from_address, 1, type: :bytes, json_name: "transparentFromAddress"
  field :ak, 2, type: :bytes
  field :nsk, 3, type: :bytes
  field :ovk, 4, type: :bytes
  field :from_amount, 5, type: :int64, json_name: "fromAmount"
  field :shielded_spends, 6, repeated: true, type: Protocol.SpendNote, json_name: "shieldedSpends"

  field :shielded_receives, 7,
    repeated: true,
    type: Protocol.ReceiveNote,
    json_name: "shieldedReceives"

  field :transparent_to_address, 8, type: :bytes, json_name: "transparentToAddress"
  field :to_amount, 9, type: :int64, json_name: "toAmount"
  field :timeout, 10, type: :int64
end
defmodule Protocol.SpendAuthSigParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ask, 1, type: :bytes
  field :tx_hash, 2, type: :bytes, json_name: "txHash"
  field :alpha, 3, type: :bytes
end
defmodule Protocol.NfParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 1, type: Protocol.Note
  field :voucher, 2, type: Protocol.IncrementalMerkleVoucher
  field :ak, 3, type: :bytes
  field :nk, 4, type: :bytes
end
defmodule Protocol.ExpandedSpendingKeyMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ask, 1, type: :bytes
  field :nsk, 2, type: :bytes
  field :ovk, 3, type: :bytes
end
defmodule Protocol.ViewingKeyMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ak, 1, type: :bytes
  field :nk, 2, type: :bytes
end
defmodule Protocol.IncomingViewingKeyMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ivk, 1, type: :bytes
end
defmodule Protocol.DiversifierMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :d, 1, type: :bytes
end
defmodule Protocol.IncomingViewingKeyDiversifierMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ivk, 1, type: Protocol.IncomingViewingKeyMessage
  field :d, 2, type: Protocol.DiversifierMessage
end
defmodule Protocol.PaymentAddressMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :d, 1, type: Protocol.DiversifierMessage
  field :pkD, 2, type: :bytes
  field :payment_address, 3, type: :string, json_name: "paymentAddress"
end
defmodule Protocol.ShieldedAddressInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :sk, 1, type: :bytes
  field :ask, 2, type: :bytes
  field :nsk, 3, type: :bytes
  field :ovk, 4, type: :bytes
  field :ak, 5, type: :bytes
  field :nk, 6, type: :bytes
  field :ivk, 7, type: :bytes
  field :d, 8, type: :bytes
  field :pkD, 9, type: :bytes
  field :payment_address, 10, type: :string, json_name: "paymentAddress"
end
defmodule Protocol.NoteParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ak, 1, type: :bytes
  field :nk, 2, type: :bytes
  field :note, 3, type: Protocol.Note
  field :txid, 4, type: :bytes
  field :index, 5, type: :int32
end
defmodule Protocol.SpendResult do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :result, 1, type: :bool
  field :message, 2, type: :string
end
defmodule Protocol.TransactionInfoList do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :transactionInfo, 1, repeated: true, type: Protocol.TransactionInfo
end
defmodule Protocol.SpendNoteTRC20 do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 1, type: Protocol.Note
  field :alpha, 2, type: :bytes
  field :root, 3, type: :bytes
  field :path, 4, type: :bytes
  field :pos, 5, type: :int64
end
defmodule Protocol.PrivateShieldedTRC20Parameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ask, 1, type: :bytes
  field :nsk, 2, type: :bytes
  field :ovk, 3, type: :bytes
  field :from_amount, 4, type: :string, json_name: "fromAmount"

  field :shielded_spends, 5,
    repeated: true,
    type: Protocol.SpendNoteTRC20,
    json_name: "shieldedSpends"

  field :shielded_receives, 6,
    repeated: true,
    type: Protocol.ReceiveNote,
    json_name: "shieldedReceives"

  field :transparent_to_address, 7, type: :bytes, json_name: "transparentToAddress"
  field :to_amount, 8, type: :string, json_name: "toAmount"

  field :shielded_TRC20_contract_address, 9,
    type: :bytes,
    json_name: "shieldedTRC20ContractAddress"
end
defmodule Protocol.PrivateShieldedTRC20ParametersWithoutAsk do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :ak, 1, type: :bytes
  field :nsk, 2, type: :bytes
  field :ovk, 3, type: :bytes
  field :from_amount, 4, type: :string, json_name: "fromAmount"

  field :shielded_spends, 5,
    repeated: true,
    type: Protocol.SpendNoteTRC20,
    json_name: "shieldedSpends"

  field :shielded_receives, 6,
    repeated: true,
    type: Protocol.ReceiveNote,
    json_name: "shieldedReceives"

  field :transparent_to_address, 7, type: :bytes, json_name: "transparentToAddress"
  field :to_amount, 8, type: :string, json_name: "toAmount"

  field :shielded_TRC20_contract_address, 9,
    type: :bytes,
    json_name: "shieldedTRC20ContractAddress"
end
defmodule Protocol.ShieldedTRC20Parameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :spend_description, 1,
    repeated: true,
    type: Protocol.SpendDescription,
    json_name: "spendDescription"

  field :receive_description, 2,
    repeated: true,
    type: Protocol.ReceiveDescription,
    json_name: "receiveDescription"

  field :binding_signature, 3, type: :bytes, json_name: "bindingSignature"
  field :message_hash, 4, type: :bytes, json_name: "messageHash"
  field :trigger_contract_input, 5, type: :string, json_name: "triggerContractInput"
  field :parameter_type, 6, type: :string, json_name: "parameterType"
end
defmodule Protocol.IvkDecryptTRC20Parameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :start_block_index, 1, type: :int64, json_name: "startBlockIndex"
  field :end_block_index, 2, type: :int64, json_name: "endBlockIndex"

  field :shielded_TRC20_contract_address, 3,
    type: :bytes,
    json_name: "shieldedTRC20ContractAddress"

  field :ivk, 4, type: :bytes
  field :ak, 5, type: :bytes
  field :nk, 6, type: :bytes
  field :events, 7, repeated: true, type: :string, deprecated: true
end
defmodule Protocol.OvkDecryptTRC20Parameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :start_block_index, 1, type: :int64, json_name: "startBlockIndex"
  field :end_block_index, 2, type: :int64, json_name: "endBlockIndex"
  field :ovk, 3, type: :bytes

  field :shielded_TRC20_contract_address, 4,
    type: :bytes,
    json_name: "shieldedTRC20ContractAddress"

  field :events, 5, repeated: true, type: :string, deprecated: true
end
defmodule Protocol.DecryptNotesTRC20.NoteTx do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 1, type: Protocol.Note
  field :position, 2, type: :int64
  field :is_spent, 3, type: :bool, json_name: "isSpent"
  field :txid, 4, type: :bytes
  field :index, 5, type: :int32
  field :to_amount, 6, type: :string, json_name: "toAmount"
  field :transparent_to_address, 7, type: :bytes, json_name: "transparentToAddress"
end
defmodule Protocol.DecryptNotesTRC20 do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :noteTxs, 1, repeated: true, type: Protocol.DecryptNotesTRC20.NoteTx
end
defmodule Protocol.NfTRC20Parameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :note, 1, type: Protocol.Note
  field :ak, 2, type: :bytes
  field :nk, 3, type: :bytes
  field :position, 4, type: :int64

  field :shielded_TRC20_contract_address, 5,
    type: :bytes,
    json_name: "shieldedTRC20ContractAddress"
end
defmodule Protocol.NullifierResult do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :is_spent, 1, type: :bool, json_name: "isSpent"
end
defmodule Protocol.ShieldedTRC20TriggerContractParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :shielded_TRC20_Parameters, 1,
    type: Protocol.ShieldedTRC20Parameters,
    json_name: "shieldedTRC20Parameters"

  field :spend_authority_signature, 2,
    repeated: true,
    type: Protocol.BytesMessage,
    json_name: "spendAuthoritySignature"

  field :amount, 3, type: :string
  field :transparent_to_address, 4, type: :bytes, json_name: "transparentToAddress"
end
defmodule Protocol.Wallet.Service do
  @moduledoc false
  use GRPC.Service, name: "protocol.Wallet", protoc_gen_elixir_version: "0.10.0"

  rpc :GetAccount, Protocol.Account, Protocol.Account

  rpc :GetAccountById, Protocol.Account, Protocol.Account

  rpc :GetAccountBalance, Protocol.AccountBalanceRequest, Protocol.AccountBalanceResponse

  rpc :GetBlockBalanceTrace,
      Protocol.BlockBalanceTrace.BlockIdentifier,
      Protocol.BlockBalanceTrace

  rpc :CreateTransaction, Protocol.TransferContract, Protocol.Transaction

  rpc :CreateTransaction2, Protocol.TransferContract, Protocol.TransactionExtention

  rpc :BroadcastTransaction, Protocol.Transaction, Protocol.Return

  rpc :UpdateAccount, Protocol.AccountUpdateContract, Protocol.Transaction

  rpc :SetAccountId, Protocol.SetAccountIdContract, Protocol.Transaction

  rpc :UpdateAccount2, Protocol.AccountUpdateContract, Protocol.TransactionExtention

  rpc :VoteWitnessAccount, Protocol.VoteWitnessContract, Protocol.Transaction

  rpc :UpdateSetting, Protocol.UpdateSettingContract, Protocol.TransactionExtention

  rpc :UpdateEnergyLimit, Protocol.UpdateEnergyLimitContract, Protocol.TransactionExtention

  rpc :VoteWitnessAccount2, Protocol.VoteWitnessContract, Protocol.TransactionExtention

  rpc :CreateAssetIssue, Protocol.AssetIssueContract, Protocol.Transaction

  rpc :CreateAssetIssue2, Protocol.AssetIssueContract, Protocol.TransactionExtention

  rpc :UpdateWitness, Protocol.WitnessUpdateContract, Protocol.Transaction

  rpc :UpdateWitness2, Protocol.WitnessUpdateContract, Protocol.TransactionExtention

  rpc :CreateAccount, Protocol.AccountCreateContract, Protocol.Transaction

  rpc :CreateAccount2, Protocol.AccountCreateContract, Protocol.TransactionExtention

  rpc :CreateWitness, Protocol.WitnessCreateContract, Protocol.Transaction

  rpc :CreateWitness2, Protocol.WitnessCreateContract, Protocol.TransactionExtention

  rpc :TransferAsset, Protocol.TransferAssetContract, Protocol.Transaction

  rpc :TransferAsset2, Protocol.TransferAssetContract, Protocol.TransactionExtention

  rpc :ParticipateAssetIssue, Protocol.ParticipateAssetIssueContract, Protocol.Transaction

  rpc :ParticipateAssetIssue2,
      Protocol.ParticipateAssetIssueContract,
      Protocol.TransactionExtention

  rpc :FreezeBalance, Protocol.FreezeBalanceContract, Protocol.Transaction

  rpc :FreezeBalance2, Protocol.FreezeBalanceContract, Protocol.TransactionExtention

  rpc :FreezeBalanceV2, Protocol.FreezeBalanceV2Contract, Protocol.TransactionExtention

  rpc :UnfreezeBalance, Protocol.UnfreezeBalanceContract, Protocol.Transaction

  rpc :UnfreezeBalance2, Protocol.UnfreezeBalanceContract, Protocol.TransactionExtention

  rpc :UnfreezeBalanceV2, Protocol.UnfreezeBalanceV2Contract, Protocol.TransactionExtention

  rpc :UnfreezeAsset, Protocol.UnfreezeAssetContract, Protocol.Transaction

  rpc :UnfreezeAsset2, Protocol.UnfreezeAssetContract, Protocol.TransactionExtention

  rpc :WithdrawBalance, Protocol.WithdrawBalanceContract, Protocol.Transaction

  rpc :WithdrawBalance2, Protocol.WithdrawBalanceContract, Protocol.TransactionExtention

  rpc :WithdrawExpireUnfreeze,
      Protocol.WithdrawExpireUnfreezeContract,
      Protocol.TransactionExtention

  rpc :DelegateResource, Protocol.DelegateResourceContract, Protocol.TransactionExtention

  rpc :UnDelegateResource, Protocol.UnDelegateResourceContract, Protocol.TransactionExtention

  rpc :CancelAllUnfreezeV2, Protocol.CancelAllUnfreezeV2Contract, Protocol.TransactionExtention

  rpc :UpdateAsset, Protocol.UpdateAssetContract, Protocol.Transaction

  rpc :UpdateAsset2, Protocol.UpdateAssetContract, Protocol.TransactionExtention

  rpc :ProposalCreate, Protocol.ProposalCreateContract, Protocol.TransactionExtention

  rpc :ProposalApprove, Protocol.ProposalApproveContract, Protocol.TransactionExtention

  rpc :ProposalDelete, Protocol.ProposalDeleteContract, Protocol.TransactionExtention

  rpc :BuyStorage, Protocol.BuyStorageContract, Protocol.TransactionExtention

  rpc :BuyStorageBytes, Protocol.BuyStorageBytesContract, Protocol.TransactionExtention

  rpc :SellStorage, Protocol.SellStorageContract, Protocol.TransactionExtention

  rpc :ExchangeCreate, Protocol.ExchangeCreateContract, Protocol.TransactionExtention

  rpc :ExchangeInject, Protocol.ExchangeInjectContract, Protocol.TransactionExtention

  rpc :ExchangeWithdraw, Protocol.ExchangeWithdrawContract, Protocol.TransactionExtention

  rpc :ExchangeTransaction, Protocol.ExchangeTransactionContract, Protocol.TransactionExtention

  rpc :MarketSellAsset, Protocol.MarketSellAssetContract, Protocol.TransactionExtention

  rpc :MarketCancelOrder, Protocol.MarketCancelOrderContract, Protocol.TransactionExtention

  rpc :GetMarketOrderById, Protocol.BytesMessage, Protocol.MarketOrder

  rpc :GetMarketOrderByAccount, Protocol.BytesMessage, Protocol.MarketOrderList

  rpc :GetMarketPriceByPair, Protocol.MarketOrderPair, Protocol.MarketPriceList

  rpc :GetMarketOrderListByPair, Protocol.MarketOrderPair, Protocol.MarketOrderList

  rpc :GetMarketPairList, Protocol.EmptyMessage, Protocol.MarketOrderPairList

  rpc :ListNodes, Protocol.EmptyMessage, Protocol.NodeList

  rpc :GetAssetIssueByAccount, Protocol.Account, Protocol.AssetIssueList

  rpc :GetAccountNet, Protocol.Account, Protocol.AccountNetMessage

  rpc :GetAccountResource, Protocol.Account, Protocol.AccountResourceMessage

  rpc :GetAssetIssueByName, Protocol.BytesMessage, Protocol.AssetIssueContract

  rpc :GetAssetIssueListByName, Protocol.BytesMessage, Protocol.AssetIssueList

  rpc :GetAssetIssueById, Protocol.BytesMessage, Protocol.AssetIssueContract

  rpc :GetNowBlock, Protocol.EmptyMessage, Protocol.Block

  rpc :GetNowBlock2, Protocol.EmptyMessage, Protocol.BlockExtention

  rpc :GetBlockByNum, Protocol.NumberMessage, Protocol.Block

  rpc :GetBlockByNum2, Protocol.NumberMessage, Protocol.BlockExtention

  rpc :GetTransactionCountByBlockNum, Protocol.NumberMessage, Protocol.NumberMessage

  rpc :GetBlockById, Protocol.BytesMessage, Protocol.Block

  rpc :GetBlockByLimitNext, Protocol.BlockLimit, Protocol.BlockList

  rpc :GetBlockByLimitNext2, Protocol.BlockLimit, Protocol.BlockListExtention

  rpc :GetBlockByLatestNum, Protocol.NumberMessage, Protocol.BlockList

  rpc :GetBlockByLatestNum2, Protocol.NumberMessage, Protocol.BlockListExtention

  rpc :GetTransactionById, Protocol.BytesMessage, Protocol.Transaction

  rpc :DeployContract, Protocol.CreateSmartContract, Protocol.TransactionExtention

  rpc :GetContract, Protocol.BytesMessage, Protocol.SmartContract

  rpc :GetContractInfo, Protocol.BytesMessage, Protocol.SmartContractDataWrapper

  rpc :TriggerContract, Protocol.TriggerSmartContract, Protocol.TransactionExtention

  rpc :TriggerConstantContract, Protocol.TriggerSmartContract, Protocol.TransactionExtention

  rpc :EstimateEnergy, Protocol.TriggerSmartContract, Protocol.EstimateEnergyMessage

  rpc :ClearContractABI, Protocol.ClearABIContract, Protocol.TransactionExtention

  rpc :ListWitnesses, Protocol.EmptyMessage, Protocol.WitnessList

  rpc :GetPaginatedNowWitnessList, Protocol.PaginatedMessage, Protocol.WitnessList

  rpc :GetDelegatedResource, Protocol.DelegatedResourceMessage, Protocol.DelegatedResourceList

  rpc :GetDelegatedResourceV2, Protocol.DelegatedResourceMessage, Protocol.DelegatedResourceList

  rpc :GetDelegatedResourceAccountIndex,
      Protocol.BytesMessage,
      Protocol.DelegatedResourceAccountIndex

  rpc :GetDelegatedResourceAccountIndexV2,
      Protocol.BytesMessage,
      Protocol.DelegatedResourceAccountIndex

  rpc :GetCanDelegatedMaxSize,
      Protocol.CanDelegatedMaxSizeRequestMessage,
      Protocol.CanDelegatedMaxSizeResponseMessage

  rpc :GetAvailableUnfreezeCount,
      Protocol.GetAvailableUnfreezeCountRequestMessage,
      Protocol.GetAvailableUnfreezeCountResponseMessage

  rpc :GetCanWithdrawUnfreezeAmount,
      Protocol.CanWithdrawUnfreezeAmountRequestMessage,
      Protocol.CanWithdrawUnfreezeAmountResponseMessage

  rpc :ListProposals, Protocol.EmptyMessage, Protocol.ProposalList

  rpc :GetPaginatedProposalList, Protocol.PaginatedMessage, Protocol.ProposalList

  rpc :GetProposalById, Protocol.BytesMessage, Protocol.Proposal

  rpc :ListExchanges, Protocol.EmptyMessage, Protocol.ExchangeList

  rpc :GetPaginatedExchangeList, Protocol.PaginatedMessage, Protocol.ExchangeList

  rpc :GetExchangeById, Protocol.BytesMessage, Protocol.Exchange

  rpc :GetChainParameters, Protocol.EmptyMessage, Protocol.ChainParameters

  rpc :GetAssetIssueList, Protocol.EmptyMessage, Protocol.AssetIssueList

  rpc :GetPaginatedAssetIssueList, Protocol.PaginatedMessage, Protocol.AssetIssueList

  rpc :TotalTransaction, Protocol.EmptyMessage, Protocol.NumberMessage

  rpc :GetNextMaintenanceTime, Protocol.EmptyMessage, Protocol.NumberMessage

  rpc :GetTransactionInfoById, Protocol.BytesMessage, Protocol.TransactionInfo

  rpc :AccountPermissionUpdate,
      Protocol.AccountPermissionUpdateContract,
      Protocol.TransactionExtention

  rpc :GetTransactionSignWeight, Protocol.Transaction, Protocol.TransactionSignWeight

  rpc :GetTransactionApprovedList, Protocol.Transaction, Protocol.TransactionApprovedList

  rpc :GetNodeInfo, Protocol.EmptyMessage, Protocol.NodeInfo

  rpc :GetRewardInfo, Protocol.BytesMessage, Protocol.NumberMessage

  rpc :GetBrokerageInfo, Protocol.BytesMessage, Protocol.NumberMessage

  rpc :UpdateBrokerage, Protocol.UpdateBrokerageContract, Protocol.TransactionExtention

  rpc :CreateShieldedTransaction, Protocol.PrivateParameters, Protocol.TransactionExtention

  rpc :GetMerkleTreeVoucherInfo, Protocol.OutputPointInfo, Protocol.IncrementalMerkleVoucherInfo

  rpc :ScanNoteByIvk, Protocol.IvkDecryptParameters, Protocol.DecryptNotes

  rpc :ScanAndMarkNoteByIvk, Protocol.IvkDecryptAndMarkParameters, Protocol.DecryptNotesMarked

  rpc :ScanNoteByOvk, Protocol.OvkDecryptParameters, Protocol.DecryptNotes

  rpc :GetSpendingKey, Protocol.EmptyMessage, Protocol.BytesMessage

  rpc :GetExpandedSpendingKey, Protocol.BytesMessage, Protocol.ExpandedSpendingKeyMessage

  rpc :GetAkFromAsk, Protocol.BytesMessage, Protocol.BytesMessage

  rpc :GetNkFromNsk, Protocol.BytesMessage, Protocol.BytesMessage

  rpc :GetIncomingViewingKey, Protocol.ViewingKeyMessage, Protocol.IncomingViewingKeyMessage

  rpc :GetDiversifier, Protocol.EmptyMessage, Protocol.DiversifierMessage

  rpc :GetNewShieldedAddress, Protocol.EmptyMessage, Protocol.ShieldedAddressInfo

  rpc :GetZenPaymentAddress,
      Protocol.IncomingViewingKeyDiversifierMessage,
      Protocol.PaymentAddressMessage

  rpc :GetRcm, Protocol.EmptyMessage, Protocol.BytesMessage

  rpc :IsSpend, Protocol.NoteParameters, Protocol.SpendResult

  rpc :CreateShieldedTransactionWithoutSpendAuthSig,
      Protocol.PrivateParametersWithoutAsk,
      Protocol.TransactionExtention

  rpc :GetShieldTransactionHash, Protocol.Transaction, Protocol.BytesMessage

  rpc :CreateSpendAuthSig, Protocol.SpendAuthSigParameters, Protocol.BytesMessage

  rpc :CreateShieldNullifier, Protocol.NfParameters, Protocol.BytesMessage

  rpc :CreateShieldedContractParameters,
      Protocol.PrivateShieldedTRC20Parameters,
      Protocol.ShieldedTRC20Parameters

  rpc :CreateShieldedContractParametersWithoutAsk,
      Protocol.PrivateShieldedTRC20ParametersWithoutAsk,
      Protocol.ShieldedTRC20Parameters

  rpc :ScanShieldedTRC20NotesByIvk, Protocol.IvkDecryptTRC20Parameters, Protocol.DecryptNotesTRC20

  rpc :ScanShieldedTRC20NotesByOvk, Protocol.OvkDecryptTRC20Parameters, Protocol.DecryptNotesTRC20

  rpc :IsShieldedTRC20ContractNoteSpent, Protocol.NfTRC20Parameters, Protocol.NullifierResult

  rpc :GetTriggerInputForShieldedTRC20Contract,
      Protocol.ShieldedTRC20TriggerContractParameters,
      Protocol.BytesMessage

  rpc :CreateCommonTransaction, Protocol.Transaction, Protocol.TransactionExtention

  rpc :GetTransactionInfoByBlockNum, Protocol.NumberMessage, Protocol.TransactionInfoList

  rpc :GetBurnTrx, Protocol.EmptyMessage, Protocol.NumberMessage

  rpc :GetTransactionFromPending, Protocol.BytesMessage, Protocol.Transaction

  rpc :GetTransactionListFromPending, Protocol.EmptyMessage, Protocol.TransactionIdList

  rpc :GetPendingSize, Protocol.EmptyMessage, Protocol.NumberMessage

  rpc :GetBlock, Protocol.BlockReq, Protocol.BlockExtention

  rpc :GetBandwidthPrices, Protocol.EmptyMessage, Protocol.PricesResponseMessage

  rpc :GetEnergyPrices, Protocol.EmptyMessage, Protocol.PricesResponseMessage

  rpc :GetMemoFee, Protocol.EmptyMessage, Protocol.PricesResponseMessage
end

defmodule Protocol.Wallet.Stub do
  @moduledoc false
  use GRPC.Stub, service: Protocol.Wallet.Service
end
defmodule Protocol.WalletSolidity.Service do
  @moduledoc false
  use GRPC.Service, name: "protocol.WalletSolidity", protoc_gen_elixir_version: "0.10.0"

  rpc :GetAccount, Protocol.Account, Protocol.Account

  rpc :GetAccountById, Protocol.Account, Protocol.Account

  rpc :ListWitnesses, Protocol.EmptyMessage, Protocol.WitnessList

  rpc :GetPaginatedNowWitnessList, Protocol.PaginatedMessage, Protocol.WitnessList

  rpc :GetAssetIssueList, Protocol.EmptyMessage, Protocol.AssetIssueList

  rpc :GetPaginatedAssetIssueList, Protocol.PaginatedMessage, Protocol.AssetIssueList

  rpc :GetAssetIssueByName, Protocol.BytesMessage, Protocol.AssetIssueContract

  rpc :GetAssetIssueListByName, Protocol.BytesMessage, Protocol.AssetIssueList

  rpc :GetAssetIssueById, Protocol.BytesMessage, Protocol.AssetIssueContract

  rpc :GetNowBlock, Protocol.EmptyMessage, Protocol.Block

  rpc :GetNowBlock2, Protocol.EmptyMessage, Protocol.BlockExtention

  rpc :GetBlockByNum, Protocol.NumberMessage, Protocol.Block

  rpc :GetBlockByNum2, Protocol.NumberMessage, Protocol.BlockExtention

  rpc :GetTransactionCountByBlockNum, Protocol.NumberMessage, Protocol.NumberMessage

  rpc :GetDelegatedResource, Protocol.DelegatedResourceMessage, Protocol.DelegatedResourceList

  rpc :GetDelegatedResourceV2, Protocol.DelegatedResourceMessage, Protocol.DelegatedResourceList

  rpc :GetDelegatedResourceAccountIndex,
      Protocol.BytesMessage,
      Protocol.DelegatedResourceAccountIndex

  rpc :GetDelegatedResourceAccountIndexV2,
      Protocol.BytesMessage,
      Protocol.DelegatedResourceAccountIndex

  rpc :GetCanDelegatedMaxSize,
      Protocol.CanDelegatedMaxSizeRequestMessage,
      Protocol.CanDelegatedMaxSizeResponseMessage

  rpc :GetAvailableUnfreezeCount,
      Protocol.GetAvailableUnfreezeCountRequestMessage,
      Protocol.GetAvailableUnfreezeCountResponseMessage

  rpc :GetCanWithdrawUnfreezeAmount,
      Protocol.CanWithdrawUnfreezeAmountRequestMessage,
      Protocol.CanWithdrawUnfreezeAmountResponseMessage

  rpc :GetExchangeById, Protocol.BytesMessage, Protocol.Exchange

  rpc :ListExchanges, Protocol.EmptyMessage, Protocol.ExchangeList

  rpc :GetTransactionById, Protocol.BytesMessage, Protocol.Transaction

  rpc :GetTransactionInfoById, Protocol.BytesMessage, Protocol.TransactionInfo

  rpc :GetMerkleTreeVoucherInfo, Protocol.OutputPointInfo, Protocol.IncrementalMerkleVoucherInfo

  rpc :ScanNoteByIvk, Protocol.IvkDecryptParameters, Protocol.DecryptNotes

  rpc :ScanAndMarkNoteByIvk, Protocol.IvkDecryptAndMarkParameters, Protocol.DecryptNotesMarked

  rpc :ScanNoteByOvk, Protocol.OvkDecryptParameters, Protocol.DecryptNotes

  rpc :IsSpend, Protocol.NoteParameters, Protocol.SpendResult

  rpc :ScanShieldedTRC20NotesByIvk, Protocol.IvkDecryptTRC20Parameters, Protocol.DecryptNotesTRC20

  rpc :ScanShieldedTRC20NotesByOvk, Protocol.OvkDecryptTRC20Parameters, Protocol.DecryptNotesTRC20

  rpc :IsShieldedTRC20ContractNoteSpent, Protocol.NfTRC20Parameters, Protocol.NullifierResult

  rpc :GetRewardInfo, Protocol.BytesMessage, Protocol.NumberMessage

  rpc :GetBrokerageInfo, Protocol.BytesMessage, Protocol.NumberMessage

  rpc :TriggerConstantContract, Protocol.TriggerSmartContract, Protocol.TransactionExtention

  rpc :EstimateEnergy, Protocol.TriggerSmartContract, Protocol.EstimateEnergyMessage

  rpc :GetTransactionInfoByBlockNum, Protocol.NumberMessage, Protocol.TransactionInfoList

  rpc :GetMarketOrderById, Protocol.BytesMessage, Protocol.MarketOrder

  rpc :GetMarketOrderByAccount, Protocol.BytesMessage, Protocol.MarketOrderList

  rpc :GetMarketPriceByPair, Protocol.MarketOrderPair, Protocol.MarketPriceList

  rpc :GetMarketOrderListByPair, Protocol.MarketOrderPair, Protocol.MarketOrderList

  rpc :GetMarketPairList, Protocol.EmptyMessage, Protocol.MarketOrderPairList

  rpc :GetBurnTrx, Protocol.EmptyMessage, Protocol.NumberMessage

  rpc :GetBlock, Protocol.BlockReq, Protocol.BlockExtention

  rpc :GetBandwidthPrices, Protocol.EmptyMessage, Protocol.PricesResponseMessage

  rpc :GetEnergyPrices, Protocol.EmptyMessage, Protocol.PricesResponseMessage
end

defmodule Protocol.WalletSolidity.Stub do
  @moduledoc false
  use GRPC.Stub, service: Protocol.WalletSolidity.Service
end
defmodule Protocol.WalletExtension.Service do
  @moduledoc false
  use GRPC.Service, name: "protocol.WalletExtension", protoc_gen_elixir_version: "0.10.0"

  rpc :GetTransactionsFromThis, Protocol.AccountPaginated, Protocol.TransactionList

  rpc :GetTransactionsFromThis2, Protocol.AccountPaginated, Protocol.TransactionListExtention

  rpc :GetTransactionsToThis, Protocol.AccountPaginated, Protocol.TransactionList

  rpc :GetTransactionsToThis2, Protocol.AccountPaginated, Protocol.TransactionListExtention
end

defmodule Protocol.WalletExtension.Stub do
  @moduledoc false
  use GRPC.Stub, service: Protocol.WalletExtension.Service
end
defmodule Protocol.Database.Service do
  @moduledoc false
  use GRPC.Service, name: "protocol.Database", protoc_gen_elixir_version: "0.10.0"

  rpc :getBlockReference, Protocol.EmptyMessage, Protocol.BlockReference

  rpc :GetDynamicProperties, Protocol.EmptyMessage, Protocol.DynamicProperties

  rpc :GetNowBlock, Protocol.EmptyMessage, Protocol.Block

  rpc :GetBlockByNum, Protocol.NumberMessage, Protocol.Block
end

defmodule Protocol.Database.Stub do
  @moduledoc false
  use GRPC.Stub, service: Protocol.Database.Service
end
defmodule Protocol.Monitor.Service do
  @moduledoc false
  use GRPC.Service, name: "protocol.Monitor", protoc_gen_elixir_version: "0.10.0"

  rpc :GetStatsInfo, Protocol.EmptyMessage, Protocol.MetricsInfo
end

defmodule Protocol.Monitor.Stub do
  @moduledoc false
  use GRPC.Stub, service: Protocol.Monitor.Service
end
defmodule Protocol.Network.Service do
  @moduledoc false
  use GRPC.Service, name: "protocol.Network", protoc_gen_elixir_version: "0.10.0"
end

defmodule Protocol.Network.Stub do
  @moduledoc false
  use GRPC.Stub, service: Protocol.Network.Service
end
