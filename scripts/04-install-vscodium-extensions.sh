#!/bin/bash

set -euo pipefail

SCRIPTS_DIR="$(pwd)"
DOTFILES_ROOT="$(realpath "$SCRIPTS_DIR/..")"
CONFIG_DIR="$DOTFILES_ROOT/config"

EXT_LIST="$CONFIG_DIR/vscodium/extensions.txt"

if [ -f "$EXT_LIST" ]; then
  echo "Installing VSCodium extensions..."
  cat "$EXT_LIST" | xargs -L 1 codium --install-extension
else
  echo "Extension list not found."
fi

