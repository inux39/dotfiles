export HISTCONTROL=ignoreboth:erasedups
export PATH=$HOME/bin:$PATH

alias ls='ls -alhF --color=auto'
alias k='kubectl'
alias unzip+='unzip -O sjis'

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

source <(kubectl completion bash)

complete -F __start_kubectl k

