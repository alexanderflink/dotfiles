#!/bin/zsh

# Install homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ---------------------------------
# Install GUI apps with brew cask
# --------------------------------- 

brew install --cask 1password

brew install --cask brave-browser

brew install --cask warp

brew install --cask appcleaner

brew install --cask mullvadvpn

brew install --cask spotify

brew install --cask telegram

brew install --cask toggl-track

# ---------------------------------
# Create folders
# ---------------------------------

mkdir -p ~/dev

# ---------------------------------
# Install CLI apps
# --------------------------------- 

brew install fish

# Set fish as default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

brew install jesseduffield/lazygit/lazygit

# Install fnm and set default node version to 16
brew install fnm

echo "fnm env --use-on-cd | source" > ~/.config/fish/conf.d/fnm.fish

fnm install 16

fnm default 16

# Enable corepack (to install yarn automatically in projects)
corepack enable

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
# Manual / missing steps
# --------------------------------- 

# - Panic Nova does not currently work through homebrew
# - Spark email client is only available through App Store
