#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR=$HOME/.config/nvim

LUA_DIR=lua
GENERAL_DIR=$LUA_DIR/general
PLUGINS_DIR=$LUA_DIR/plugins

mkdir $CONFIG_DIR
mkdir $CONFIG_DIR/$LUA_DIR
mkdir $CONFIG_DIR/$GENERAL_DIR
mkdir $CONFIG_DIR/$PLUGINS_DIR

ln -s $CURRENT_DIR/init.lua $CONFIG_DIR/init.lua

ln -s $CURRENT_DIR/$GENERAL_DIR/settings.lua $CONFIG_DIR/$GENERAL_DIR/settings.lua
ln -s $CURRENT_DIR/$GENERAL_DIR/mappings.lua $CONFIG_DIR/$GENERAL_DIR/mappings.lua
ln -s $CURRENT_DIR/$GENERAL_DIR/behaviors.lua $CONFIG_DIR/$GENERAL_DIR/behaviors.lua

ln -s $CURRENT_DIR/$PLUGINS_DIR/autopairs.lua $CONFIG_DIR/$PLUGINS_DIR/autopairs.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/bufferline.lua $CONFIG_DIR/$PLUGINS_DIR/bufferline.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/cmp.lua $CONFIG_DIR/$PLUGINS_DIR/cmp.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/comment.lua $CONFIG_DIR/$PLUGINS_DIR/comment.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/ctrlspace.lua $CONFIG_DIR/$PLUGINS_DIR/ctrlspace.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/diagnostics.lua $CONFIG_DIR/$PLUGINS_DIR/diagnostics.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/gitsigns.lua $CONFIG_DIR/$PLUGINS_DIR/gitsigns.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/indentline.lua $CONFIG_DIR/$PLUGINS_DIR/indentline.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/lsp.lua $CONFIG_DIR/$PLUGINS_DIR/lsp.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/lualine.lua $CONFIG_DIR/$PLUGINS_DIR/lualine.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/packer.lua $CONFIG_DIR/$PLUGINS_DIR/packer.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/ranger.lua $CONFIG_DIR/$PLUGINS_DIR/ranger.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/sneak.lua $CONFIG_DIR/$PLUGINS_DIR/sneak.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/telescope.lua $CONFIG_DIR/$PLUGINS_DIR/telescope.lua
ln -s $CURRENT_DIR/$PLUGINS_DIR/treesitter.lua $CONFIG_DIR/$PLUGINS_DIR/treesitter.lua

# Java Development
#sudo mkdir /usr/local/share/lombok
#sudo wget https://projectlombok.org/downloads/lombok.jar -O /usr/local/share/lombok/lombok.jar
