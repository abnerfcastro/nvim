#! /usr/bin/env bash

CONFIG_ROOT=$HOME/.config/nvim

# Create folder structure
mkdir -p $CONFIG_ROOT

folders=(general keys plugs plug-config)
for folder in ${folders[@]}
do
  mkdir -p $CONFIG_ROOT/$folder
done

if [ ! -f "$CONFIG_ROOT/autoload/plug.vim" ]; then
    # Install vim-plug
    sh -c 'curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

# Copy init.vim file to config folder
cp init.vim $CONFIG_ROOT/init.vim
cp general/settings.vim $CONFIG_ROOT/general/settings.vim
cp keys/mappings.vim $CONFIG_ROOT/keys/mappings.vim
cp plugs/plugins.vim $CONFIG_ROOT/plugs/plugins.vim
cp plug-config/*.vim $CONFIG_ROOT/plug-config/
