ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.vim .vim
vim -c "PlugInstall"
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm .zshrc
ln -s .dotfiles/.zshrc
source .zshrc
