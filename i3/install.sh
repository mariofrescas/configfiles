#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR=$HOME/.i3
CONFIG_DIR_2=$HOME

mv $CONFIG_DIR/config $CONFIG_DIR/config.bku

ln -s $CURRENT_DIR/config $CONFIG_DIR/config
ln -s $CURRENT_DIR/.xkbmap $CONFIG_DIR_2/.xkbmap
