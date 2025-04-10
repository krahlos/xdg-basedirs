#!/usr/bin/env zsh

PLUGIN_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
UTILS_DIR=$PLUGIN_DIR/utils

source $UTILS_DIR/setup_xdg.sh
