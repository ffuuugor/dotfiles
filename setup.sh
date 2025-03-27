su -c 'apt-get update && apt-get install -y sudo'
sudo apt-get install -y less nano htop ncdu nvtop lsof rsync btop jq tmux

curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env