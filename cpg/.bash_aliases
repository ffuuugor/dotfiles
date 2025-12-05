alias nvidia-spy="nvidia-smi | grep 'N/A' | awk '{print \$5}' | grep -P '^[0-9]+\$' | xargs ps -o pid,user,%cpu,%mem,cmd -p"
alias du-home="du -shc .[^.]* * --exclude='rds'"