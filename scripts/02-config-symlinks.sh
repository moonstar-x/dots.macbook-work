#!/bin/bash

set -euo pipefail

SCRIPTS_DIR="$(pwd)"
DOTFILES_ROOT="$(realpath "$SCRIPTS_DIR/..")"
CONFIG_DIR="$DOTFILES_ROOT/config"

MAC_XDG_CONFIG_HOME="$HOME/Library/Application Support"
LINUX_XDG_CONFIG_HOME="$HOME/.config"
LOCAL_SHARE="$HOME/.local/share"

echo "Linking config for atuin"
mkdir -p "$LINUX_XDG_CONFIG_HOME/atuin/themes"
rm -rf "$LINUX_XDG_CONFIG_HOME/atuin/config.toml" "$LINUX_XDG_CONFIG_HOME/atuin/themes"
ln -sf "$CONFIG_DIR/atuin/config.toml" "$LINUX_XDG_CONFIG_HOME/atuin/config.toml"
ln -sf "$CONFIG_DIR/atuin/themes" "$LINUX_XDG_CONFIG_HOME/atuin/themes"

echo "Linking config for bat"
mkdir -p "$LINUX_XDG_CONFIG_HOME/bat/themes"
rm -rf "$LINUX_XDG_CONFIG_HOME/bat/config" "$LINUX_XDG_CONFIG_HOME/bat/themes"
ln -sf "$CONFIG_DIR/bat/config" "$LINUX_XDG_CONFIG_HOME/bat/config"
ln -sf "$CONFIG_DIR/bat/themes" "$LINUX_XDG_CONFIG_HOME/bat/themes"

echo "Linking config for btop"
mkdir -p "$LINUX_XDG_CONFIG_HOME/btop/themes"
rm -rf "$LINUX_XDG_CONFIG_HOME/btop/btop.conf" "$LINUX_XDG_CONFIG_HOME/btop/themes"
ln -sf "$CONFIG_DIR/btop/btop.conf" "$LINUX_XDG_CONFIG_HOME/btop/btop.conf"
ln -sf "$CONFIG_DIR/btop/themes" "$LINUX_XDG_CONFIG_HOME/btop/themes"

echo "Linking config for eza"
mkdir -p "$MAC_XDG_CONFIG_HOME/eza"
ln -sf "$CONFIG_DIR/eza/theme.yml" "$MAC_XDG_CONFIG_HOME/eza/theme.yml"

echo "Linking config for ghostty"
mkdir -p "$MAC_XDG_CONFIG_HOME/com.mitchellh.ghostty"
ln -sf "$CONFIG_DIR/ghostty/config" "$MAC_XDG_CONFIG_HOME/com.mitchellh.ghostty/config"

echo "Linking config for git"
ln -sf "$CONFIG_DIR/git/.gitconfig" "$HOME/.gitconfig"
ln -sf "$CONFIG_DIR/git/.gitignore_global" "$HOME/.gitignore_global"

echo "Linking config for lazygit"
mkdir -p "$MAC_XDG_CONFIG_HOME/lazygit"
ln -sf "$CONFIG_DIR/lazygit/config.yml" "$MAC_XDG_CONFIG_HOME/lazygit/config.yml"

echo "Linking config for starship"
ln -sf "$CONFIG_DIR/starship/config.toml" "$LINUX_XDG_CONFIG_HOME/starship.toml"

echo "Linking config for sublime-text"
mkdir -p "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User"
ln -sf "$CONFIG_DIR/sublime-text/Preferences.sublime-settings" "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User/Preferences.sublime-settings"
ln -sf "$CONFIG_DIR/sublime-text/Default.sublime-keymap" "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User/Default.sublime-keymap"
ln -sf "$CONFIG_DIR/sublime-text/Catppuccin-Macchiato.sublime-color-scheme" "$MAC_XDG_CONFIG_HOME/Sublime Text/Packages/User/Catppuccin-Macchiato.sublime-color-scheme"

echo "Linking config for VSCodium"
mkdir -p "$MAC_XDG_CONFIG_HOME/VSCodium/User"
ln -sf "$CONFIG_DIR/vscodium/settings.json" "$MAC_XDG_CONFIG_HOME/VSCodium/User/settings.json"

echo "Linking config for Xcode"
mkdir -p "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"
ln -sf "$CONFIG_DIR/xcode/Catppuccin-Macchiato.xccolortheme" "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes/Catppuccin-Macchiato.xccolortheme"

echo "Linking config for zsh"
ln -sf "$CONFIG_DIR/zsh/.zprofile" "$HOME/.zprofile"
ln -sf "$CONFIG_DIR/zsh/.zshrc" "$HOME/.zshrc"
ln -sfn "$CONFIG_DIR/zsh/.zsh" "$HOME/.zsh"

echo "Linking config for zsh -> fast-syntax-highlighting"
mkdir -p "$LINUX_XDG_CONFIG_HOME/fsh"
ln -sf "$CONFIG_DIR/zsh/plugins/fsh/catppuccin-macchiato.ini" "$LINUX_XDG_CONFIG_HOME/fsh/catppuccin-macchiato.ini"
