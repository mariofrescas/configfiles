#!/bin/bash

CURRENT_DIR=$(pwd)
CONFIG_DIR=$HOME

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s $CURRENT_DIR/.zshrc $CONFIG_DIR/.zshrc

chsh -s $(which zsh)
