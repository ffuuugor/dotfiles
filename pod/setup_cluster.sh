#!/bin/bash
#
# RunPod Environment Setup
#
set -uoe pipefail

cp /workspace/igors/dotfiles/pod/.bashrc $HOME/
cp /workspace/igors/dotfiles/pod/.tmux.conf $HOME/
source $HOME/.bashrc

# Configure git user details
git config --global user.email "hello@igorshilov.com"
git config --global user.name "Igor Shilov"

# Claude code
mkdir -p $HOME/.npm-global
npm config set prefix '$HOME/.npm-global'

npm install -g @anthropic-ai/claude-code

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh

source $HOME/.local/bin/env
