#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR=$HOME/.config/ranger

mv $CONFIG_DIR/rc.conf $CONFIG_DIR/rc.conf.bku
mv $CONFIG_DIR/hommands.py $CONFIG_DIR/commands.py.bku

ln -s $CURRENT_DIR/plugins/__init__.py $CONFIG_DIR/plugins/__init__.py
ln -s $CURRENT_DIR/plugins/devicons_linemode.py $CONFIG_DIR/plugins/devicons_linemode.py
ln -s $CURRENT_DIR/commands.py $CONFIG_DIR/commands.py
ln -s $CURRENT_DIR/devicons.py $CONFIG_DIR/devicons.py
ln -s $CURRENT_DIR/rc.conf $CONFIG_DIR/rc.conf
ln -s $CURRENT_DIR/scope.sh $CONFIG_DIR/scope.sh
