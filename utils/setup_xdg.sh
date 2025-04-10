#!/bin/bash

# Define color codes
GREEN='\033[0;32m'   # Green
CYAN='\033[0;36m'    # Cyan
NC='\033[0m'         # No Color

# Define XDG base directories
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="$HOME/.local/run"
export XDG_STATE_HOME="$HOME/.local/state"

# Create XDG directories
for var in XDG_BIN_HOME XDG_CACHE_HOME XDG_CONFIG_HOME XDG_DATA_HOME XDG_RUNTIME_DIR XDG_STATE_HOME; do
  dir="${!var}"
  if [[ $dir == $HOME/* && ! -d $dir ]]; then
    mkdir -p "$dir"
    echo -e "[${GREEN}$var${NC}] Created directory: ${CYAN}$dir${NC}"
  fi
done
