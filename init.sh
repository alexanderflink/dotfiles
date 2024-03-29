#!/bin/zsh

# Install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ---------------------------------
# Install GUI apps with brew cask
# ---------------------------------

brew install --cask 1password

brew install --cask 1password/tap/1password-cli

brew install --cask brave-browser

brew install --cask warp

brew install --cask appcleaner

brew install --cask mullvadvpn

brew install --cask spotify

brew install --cask telegram

brew install --cask slack

brew install --cask insomnia

brew install --cask karabiner-elements

brew install --cask docker

brew install --cask hammerspoon

brew install --cask obsidian

brew install --cask timing

brew install --cask imageoptim

brew install --cask ubersicht

brew install --cask neovide

# ---------------------------------
# Create folders
# ---------------------------------

mkdir -p ~/dev

# ---------------------------------
# Install CLI apps
# ---------------------------------

brew install fish

# fisher is a package manager for fish shell
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Set fish as default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish


brew install docker

brew install jesseduffield/lazygit/lazygit

# Install fnm and set default node version to 16
brew install fnm

fnm install 16

fnm default 16

# Install prettier globally
npm install -g prettier

# Install yalc globally
npm install yalc -g
	
# Enable corepack (to install yarn automatically in projects)
corepack enable

# Install rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# Install neovim
brew install neovim

# Install nerd font (Source code pro)
brew tap homebrew/cask-fonts &&
brew install --cask font-sauce-code-pro-nerd-font
brew install --cask font-hack-nerd-font

brew install gh

brew install ffmpeg

brew install imagemagick

brew install ripgrep

brew install fd

brew install luarocks

brew install cmake

brew install htop

brew install httpie

brew install starship

brew install jless

# requires codesigning with self signed certificate
brew install koekeishiya/formulae/yabai --HEAD

brew install koekeishiya/formulae/skhd

# set hammerspoon config directory
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"

# ---------------------------------
# Run macos setup
# ---------------------------------
chmod +x ./macos-setup.sh
./macos-setup.sh

# ---------------------------------
# Run git setup
# ---------------------------------
chmod +x ./git-setup.sh
./git-setup.sh


