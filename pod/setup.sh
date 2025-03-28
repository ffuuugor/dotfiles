#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Script location: $SCRIPT_DIR"

su -c 'apt-get update && apt-get install -y sudo'
sudo apt-get install -y less nano htop ncdu nvtop lsof rsync btop jq tmux

cp /workspace/dotfiles/pod/.bashrc $HOME/.bashrc
source $HOME/.bashrc

git config --global user.email "hello@igorshilov.com"
git config --global user.name "Igor Shilov"
