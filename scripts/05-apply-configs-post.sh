#!/usr/bin/env zsh

source "$HOME/.zshrc"

echo "Post configuration for bat"
bat cache --build

echo "Post configuration for zsh -> fast-syntax-highlighting"
fast-theme XDG:catppuccin-macchiato
