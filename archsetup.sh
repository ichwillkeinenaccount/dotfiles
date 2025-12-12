#!/bin/sh

cd ~

pacman -Syu
pacman -S zsh neovim git lazygit curl luarocks gcc ripgrep xclip tree-sitter-cli tmux ghostscript tectonic mermaid-cli fd helm terraform ansible k9s kubectl python3 go fastfetch btop

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~
