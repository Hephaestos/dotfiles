cd $HOME
git clone https://github.com/hephaestos/dotfiles
mv dotfiles .dotfiles
sudo apt install zsh vim tmux
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.vim .vim
vim -c "PlugInstall | q | q"
ln -s .dotfiles/.tmux.conf .tmux.conf
rm .zshrc
ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.p10k.zsh .p10k.zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --keep-zshrc
