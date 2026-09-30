#!/usr/bin/env zsh

source "$HOME/.zshrc"

echo "Configuring Node.js..."
nvm install --lts --default

echo "Configuring Python..."
pyenv install 3.13
pyenv global 3.13
