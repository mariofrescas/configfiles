#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR=$HOME/.config/alacritty

mkdir $CONFIG_DIR

ln -s $CURRENT_DIR/alacritty.yml $CONFIG_DIR/alacritty.yml
