#!/bin/bash

echo "Installing dependencies..."

# Homebrew (macOS/Linux)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install neovim
brew install tmux
brew install helm
brew install tree
brew install git
brew install ripgrep # dependencies for grep search -nvim telescope

echo "Done!"
