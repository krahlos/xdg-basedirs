#!/usr/bin/env bash

# Define XDG base directories
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="$HOME/.local/run"
export XDG_STATE_HOME="$HOME/.local/state"

create_xdg_basedirs() {
  # ANSI color codes
  local green='\033[0;32m' # Green
  local cyan='\033[0;36m'  # Cyan
  local red='\033[0;31m'   # Red
  local nc='\033[0m'       # No Color

  for var in \
    XDG_BIN_HOME \
    XDG_CACHE_HOME \
    XDG_CONFIG_HOME \
    XDG_DATA_HOME \
    XDG_RUNTIME_DIR \
    XDG_STATE_HOME; do

    # Cross-shell indirect expansion: bash uses ${!var}, zsh uses ${(P)var}
    local dir
    eval "dir=\"\${$var}\""

    # Only under $HOME and not already existing
    if [[ $dir == "$HOME/"* && ! -d $dir ]]; then
      if mkdir -p "$dir"; then
        printf '[%b%s%b] Created directory: %b%s%b\n' \
          "$green" "$var" "$nc" \
          "$cyan" "$dir" "$nc"
      else
        printf '[%b%s%b] Failed to create directory: %b%s%b\n' \
          "$red" "$var" "$nc" \
          "$cyan" "$dir" "$nc" >&2
      fi
    fi
  done
}
