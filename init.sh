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

brew install --cask toggl-track

brew install --cask numi

brew install --cask sublime-text
defaults write com.sublimetext.4 ApplePressAndHoldEnabled -bool false

brew install --cask slack

brew install --cask insomnia

brew install --cask karabiner-elements

brew install --cask docker

brew install --cask hammerspoon

brew install --cask amethyst

brew install --cask obsidian

brew install --cask timing

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

echo "fnm env --use-on-cd | source" > ~/.config/fish/conf.d/fnm.fish

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

# Install neovim and add AstroNvim 
brew install neovim

# Install nerd font (Source code pro)
brew tap homebrew/cask-fonts &&
brew install --cask font-sauce-code-pro-nerd-font
brew install --cask font-hack-nerd-font

brew install gh

brew install ffmpeg

brew install ripgrep

brew install fd

brew install luarocks

brew install cmake

brew install htop

# ---------------------------------
# Run macos setup
# ---------------------------------
chmod +x ./macos-setup.sh
./macos-setup.sh

# ---------------------------------
# Run shell setup
# ---------------------------------
chmod +x ./shell-setup.sh
./shell-setup.sh

# ---------------------------------
# Run git setup
# ---------------------------------
chmod +x ./git-setup.sh
./git-setup.sh

# ---------------------------------
# Run sublime setup
# ---------------------------------
chmod +x ./sublime-setup.sh
./sublime-setup.sh

# ---------------------------------
# Manual / missing steps
# ---------------------------------

# - Panic Nova does not currently work through homebrew
# - Spark email client is only available through App Store
