#!/usr/bin/env bash
set -euo pipefail

BASE_URL="https://raw.githubusercontent.com/abacaxin/damage-workflow/main"
BIN_DIR="${HOME}/.local/bin"
CLI="${BIN_DIR}/dmg"
TMP="$(mktemp)"
trap 'rm -f "${TMP}"' EXIT

mkdir -p "${BIN_DIR}"
curl -fsSL "${BASE_URL}/bin/dmg" -o "${TMP}"
install -m 755 "${TMP}" "${CLI}"

case ":${PATH}:" in
  *:"${BIN_DIR}":*) ;;
  *)
    echo ""
    echo "DAMAGE CLI installed at ${CLI}"
    echo "Add ${BIN_DIR} to PATH to use 'dmg':"
    echo "  export PATH="${BIN_DIR}:$PATH""
    echo ""
    ;;
esac

"${CLI}" version
