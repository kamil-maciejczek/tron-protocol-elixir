defmodule TronProtocolElixir.WireTypeToleranceTest do
  # Fields stripped by scripts/regen.sh must decode as unknown fields when the
  # chain carries them with a wire type other than the one declared upstream.
  use ExUnit.Case, async: true

  # Nile block 71264485, tx 40e84bd2...: FreezeBalanceV2Contract whose
  # Transaction.Contract.provider (field 3, declared bytes) is a varint 0.
  @nile_raw_hex "0a0268e4220808429af1d8b5c8bb40a2a5e4ba8d345a5d083612570a34747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e467265657a6542616c616e63655632436f6e7472616374121f0a1541d22790880b75ae8f484378883511ef3a20d34b32108088debe011801180070c2d0e0ba8d34"
  @nile_txid "40e84bd2a64c10312b91d4916662e79980e5539ec23b47d9108319ffeddbca18"

  test "Transaction.Contract.provider encoded as varint decodes as unknown field" do
    raw_bytes = Base.decode16!(@nile_raw_hex, case: :lower)

    raw = Protocol.Transaction.Raw.decode(raw_bytes)

    assert [%Protocol.Transaction.Contract{type: :FreezeBalanceV2Contract} = contract] =
             raw.contract

    assert contract.__unknown_fields__ == [{3, 0, 0}]
    assert Protocol.Transaction.Raw.encode(raw) == raw_bytes

    assert :crypto.hash(:sha256, Protocol.Transaction.Raw.encode(raw)) ==
             Base.decode16!(@nile_txid, case: :lower)
  end

  test "Transaction.raw.scripts encoded as varint decodes as unknown field" do
    # timestamp = 1 (field 14, varint), then scripts (field 12) as varint 7
    raw_bytes = <<0x70, 0x01, 0x60, 0x07>>

    raw = Protocol.Transaction.Raw.decode(raw_bytes)

    assert raw.timestamp == 1
    assert raw.__unknown_fields__ == [{12, 0, 7}]
  end
end
