#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR=$HOME/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -s $CURRENT_DIR/init.vim $CONFIG_DIR/init.vim
ln -s $CURRENT_DIR/coc-settings.json $CONFIG_DIR/coc-settings.json

mkdir $CONFIG_DIR/general/
ln -s $CURRENT_DIR/general/settings.vim $CONFIG_DIR/general/settings.vim
ln -s $CURRENT_DIR/general/mappings.vim $CONFIG_DIR/general/mappings.vim

mkdir $CONFIG_DIR/plug-config/
ln -s $CURRENT_DIR/plug-config/plugins.vim $CONFIG_DIR/plug-config/plugins.vim
ln -s $CURRENT_DIR/plug-config/closetag.vim $CONFIG_DIR/plug-config/closetag.vim
ln -s $CURRENT_DIR/plug-config/coc.vim $CONFIG_DIR/plug-config/coc.vim
ln -s $CURRENT_DIR/plug-config/ctrlsf.vim $CONFIG_DIR/plug-config/ctrlsf.vim
ln -s $CURRENT_DIR/plug-config/ctrlspace.vim $CONFIG_DIR/plug-config/ctrlspace.vim
ln -s $CURRENT_DIR/plug-config/sneak.vim $CONFIG_DIR/plug-config/sneak.vim
ln -s $CURRENT_DIR/plug-config/lightline.vim $CONFIG_DIR/plug-config/lightline.vim
ln -s $CURRENT_DIR/plug-config/ranger.vim $CONFIG_DIR/plug-config/ranger.vim
ln -s $CURRENT_DIR/plug-config/indentline.vim $CONFIG_DIR/plug-config/indentline.vim
ln -s $CURRENT_DIR/plug-config/gitgutter.vim $CONFIG_DIR/plug-config/gitgutter.vim
ln -s $CURRENT_DIR/plug-config/treesitter.vim $CONFIG_DIR/plug-config/treesitter.vim

# Java Development
sudo mkdir /usr/local/share/lombok
sudo wget https://projectlombok.org/downloads/lombok.jar -O /usr/local/share/lombok/lombok.jar
