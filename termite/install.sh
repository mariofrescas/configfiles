#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR=/etc/xdg/termite

ln -s $CURRENT_DIR/config.gruvbox $CONFIG_DIR/config
