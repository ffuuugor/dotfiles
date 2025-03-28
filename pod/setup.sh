#!/bin/bash
#
# RunPod Environment Setup
#

# Install sudo if not available
su -c 'apt-get update && apt-get install -y sudo'

sudo apt-get install -y less nano htop ncdu nvtop lsof rsync btop jq tmux npm vim

# Apply .bashrc
cp /workspace/dotfiles/pod/.bashrc $HOME/.bashrc
source $HOME/.bashrc

# Configure git user details
git config --global user.email "hello@igorshilov.com"
git config --global user.name "Igor Shilov"

# Update Node.js to latest version
sudo apt-get remove -y nodejs
sudo dpkg --remove --force-remove-reinstreq libnode-dev
curl -fsSL https://deb.nodesource.com/setup_23.x | sudo -E bash -
sudo apt-get install -y nodejs

# Claude code
npm install -g @anthropic-ai/claude-code