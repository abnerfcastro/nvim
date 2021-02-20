#! /usr/bin/env bash

CONFIG_ROOT=$HOME/.config/nvim

# Create folder structure
mkdir -p $CONFIG_ROOT
mkdir -p $CONFIG_ROOT/general
mkdir -p $CONFIG_ROOT/keys

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Copy init.vim file to config folder
cp init.vim $CONFIG_ROOT/init.vim
cp general/settings.vim $CONFIG_ROOT/general/settings.vim
cp keys/mappings.vim $CONFIG_ROOT/keys/mappings.vim

