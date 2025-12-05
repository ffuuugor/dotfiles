set -e
set -o pipefail
set -u

SERVERS=(
    "cpg-asahi"
    "cpg-tofu"
    "cpg-cozonac"
    "cpg-ciorba"
    "cpg-dab"
    "cpg-phoenix"
)

FILES_TO_SYNC=(
    ".bash_aliases"
    ".bashrc"
    ".tmux.conf"
)

for server in "${SERVERS[@]}"; do
    echo "Syncing with $server"
    for file in "${FILES_TO_SYNC[@]}"; do
        echo "Syncing with $server: $file"

        if [ ! -f "$file" ]; then
            echo "File $file does not exist"
            exit 1
        fi

        ssh "$server" "[ -f ~/$file ] && cp ~/$file ~/$file.bkp || true"
        scp "$file" "$server":~
    done
done