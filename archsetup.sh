#!/bin/sh

cd ~

mv .bashrc .bashrc.bak

sudo pacman -Syu
sudo pacman -S zsh neovim git lazygit curl luarocks gcc ripgrep xclip tree-sitter-cli tmux ghostscript tectonic mermaid-cli fd helm terraform ansible k9s kubectl python3 go fastfetch btop

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#sudo pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si
#cd ~

#yay -S oh-my-posh

#sudo pacman -S --needed base-devel
#git clone https://aur.archlinux.org/paru.git
#cd paru
#makepkg -si
#cd ~
