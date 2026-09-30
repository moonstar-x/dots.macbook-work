export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14

HIST_STAMPS="dd/mm/yyyy"

# Load Pyenv here first before loading the plugins.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Custom before loading the plugins.
source "$HOME/.zsh/fzf.sh"
source "$HOME/.zsh/zsh-syntax-highlighting.zsh"

plugins=(
  asdf
  deno
  docker
  docker-compose
  gh
  git
  npm
  nvm
  pip
  pyenv
  sudo
  fast-syntax-highlighting
  zsh-autosuggestions
  zsh-syntax-highlighting
)

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' silent-autoload yes

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# export ARCHFLAGS="-arch $(uname -m)"
export EDITOR="nano"

# NVM Config
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Cargo
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export PATH=$PATH:~/.cargo/bin/

# Go Binaries
export PATH=$PATH:~/go/bin

# uv Binaries
export PATH=$PATH:~/.local/bin

# Installed Packages
eval "$(atuin init zsh)"
eval "$(starship init zsh)"

# LM Studio
export PATH="$PATH:~/.lmstudio/bin"

# Docker Desktop
fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit
