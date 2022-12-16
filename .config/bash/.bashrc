alias ls='ls -alhF --color=auto'
alias k='kubectl'
export HISTCONTROL=ignoreboth:erasedups

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

source <(kubectl completion bash)

complete -F __start_kubectl k

