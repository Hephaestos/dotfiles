#!/bin/sh
#
# Run this script with curl like
#   sh -c "$(curl -fsSL https://raw.githubusercontent.com/Hephaestos/dotfiles/master/setup.sh)"
#

# Make sure we're in the home directory
cd $HOME

# Clone dotfiles
git clone https://github.com/hephaestos/dotfiles
mv dotfiles .dotfiles

# Install what we need TODO check for the right package manager
sudo apt install zsh vim tmux

# Link all the dotfiles
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.vim .vim
ln -s .dotfiles/.tmux.conf .tmux.conf
rm .zshrc
ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.p10k.zsh .p10k.zsh

# Install vim plugins
vim -c "PlugInstall | q | q"

# Install oh-my-zsh and launch zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --keep-zshrc
