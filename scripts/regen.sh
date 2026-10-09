#!/usr/bin/env bash
# Regenerate lib/**/*.pb.ex from java-tron protos.
#
# Usage: scripts/regen.sh <java-tron-tag> [protoc-gen-elixir]
#   e.g. scripts/regen.sh GreatVoyage-v4.8.2.3 /path/to/protoc-gen-elixir
#
# Requires protoc and protoc-gen-elixir 0.10.0 (the generator version the
# checked-in bindings are produced with).
#
# Field strips (see STRIPPED_FIELDS below): protobuf-elixir raises
# Protobuf.DecodeError when a known field arrives with a wire type other than
# the declared one, while java-tron (protobuf-java) keeps such a field as an
# unknown field and accepts the transaction. Unused fields that have been
# observed on chain with a mismatched wire type are therefore replaced with
# `reserved` so the decoder skips them as unknown fields, preserving them in
# __unknown_fields__ (re-encoding stays byte-identical, so txids still hash).
set -euo pipefail

TAG="${1:?java-tron tag, e.g. GreatVoyage-v4.8.2.3}"
GEN="${2:-$(command -v protoc-gen-elixir)}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

GEN_VERSION="$("$GEN" --version)"
[ "$GEN_VERSION" = "0.10.0" ] || { echo "protoc-gen-elixir 0.10.0 required, got $GEN_VERSION" >&2; exit 1; }

git clone -q --filter=blob:none --sparse --no-checkout https://github.com/tronprotocol/java-tron "$WORK/java-tron"
git -C "$WORK/java-tron" sparse-checkout set protocol/src/main/protos
git -C "$WORK/java-tron" checkout -q "$TAG"
SRC="$WORK/java-tron/protocol/src/main/protos"

# google/api/{annotations,http}.proto are only needed to resolve imports in
# api.proto; no Elixir code is generated for them.
mkdir -p "$WORK/include/google/api"
for f in annotations http; do
  curl -fsSL "https://raw.githubusercontent.com/googleapis/googleapis/master/google/api/$f.proto" \
    -o "$WORK/include/google/api/$f.proto"
done

# <file> <message> <field declaration regex> <field number>
STRIPPED_FIELDS=(
  # 2026-04-15: mainnet txs emitted Transaction.raw.scripts as varint.
  "core/Tron.proto|raw|bytes scripts = 12;|12"
  # 2026-09-25: Nile tx 40e84bd2a64c10312b91d4916662e79980e5539ec23b47d9108319ffeddbca18
  # (block 71264485) emitted Transaction.Contract.provider as varint.
  "core/Tron.proto|Contract|bytes provider = 3;|3"
)
for entry in "${STRIPPED_FIELDS[@]}"; do
  IFS='|' read -r file message decl number <<<"$entry"
  count="$(grep -cF "$decl" "$SRC/$file" || true)"
  [ "$count" = "1" ] || { echo "expected exactly one '$decl' in $file, found $count" >&2; exit 1; }
  sed -i.bak "s/$decl/reserved $number; \/\/ stripped by scripts\/regen.sh: was \`$decl\`/" "$SRC/$file"
  rm "$SRC/$file.bak"
done

# core/tron/*.proto are empty placeholders upstream and produce no output.
PROTOS=(
  core/Tron.proto core/Discover.proto core/TronInventoryItems.proto
  api/api.proto api/zksnark.proto
)
while IFS= read -r p; do PROTOS+=("${p#"$SRC"/}"); done < <(find "$SRC/core/contract" -name '*.proto' | sort)

OUT="$WORK/out"
mkdir -p "$OUT"
protoc --plugin="protoc-gen-elixir=$GEN" --elixir_out=plugins=grpc:"$OUT" \
  -I "$SRC" -I "$WORK/include" "${PROTOS[@]}"

find "$ROOT/lib" -name '*.pb.ex' -delete
cp -R "$OUT"/. "$ROOT/lib/"
echo "Regenerated from java-tron $TAG ($(git -C "$WORK/java-tron" rev-parse --short HEAD))"
