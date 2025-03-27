#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Script location: $SCRIPT_DIR"

su -c 'apt-get update && apt-get install -y sudo'
sudo apt-get install -y less nano htop ncdu nvtop lsof rsync btop jq tmux

curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

# Copy .bashrc to the home directory
cp /workspace/dotfiles/pod/.bashrc $HOME/.bashrc

# Source the .bashrc file to apply changes immediately
source $HOME/.bashrc

