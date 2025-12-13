#!/usr/bin/env bash

cd ~

# ----------------------------
# 1) Backup existing bashrc
# ----------------------------
if [[ -f "~/.bashrc" && ! -f "~/.bashrc.bak" ]]; then
  log "Backing up .bashrc"
  mv "~/.bashrc" "~/.bashrc.bak"
fi

# ----------------------------
# 2) System update & packages
# ----------------------------
log "Updating system"
sudo pacman -Syu --noconfirm

PACKAGES=(
  vi zsh neovim git lazygit curl
  luarocks gcc ripgrep xclip
  tree-sitter-cli tmux ghostscript tectonic
  mermaid-cli fd helm terraform
  ansible k9s kubectl python3 go
  fastfetch btop
)

log "Installing packages"
sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#cd ~
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
#cd ~
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#cd ~
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
