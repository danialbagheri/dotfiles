#!/bin/bash

echo "Installing dependencies..."

# Homebrew (macOS/Linux)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


brew install neovim
brew install tmux
brew install helm
brew install tree
brew install git
# package related to nvim
brew install lua-language-server
brew install pyright
brew install ripgrep # dependencies for grep search -nvim telescope
brew install fzf # fuzzy finder
npm install -g typescript typescript-language-server

# Instaling tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# putting ~/local/bin in the path
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

echo "Done!"

