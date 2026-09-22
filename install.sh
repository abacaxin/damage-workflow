#!/usr/bin/env bash
set -euo pipefail

REPO="https://github.com/abacaxin/damage-workflow.git"
BIN_DIR="${HOME}/.local/bin"
CLI="${BIN_DIR}/dmg"
TMP="$(mktemp)"
trap 'rm -f "${TMP}"' EXIT

mkdir -p "${BIN_DIR}"
curl -fsSL "${REPO}/raw/main/bin/dmg" -o "${TMP}"
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
