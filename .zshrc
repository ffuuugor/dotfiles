if [[ -n $ZSH_VERSION && -z $BASH_VERSION && -t 0 ]]; then
    exec bash -l          # -l gives you a normal login bash
fi