export XDG_CONFIG_HOME=$HOME/.config
export HISTCONTROL=ignoreboth:erasedups
export PATH=$HOME/bin:$PATH
export EDITOR=vim
#export LESS='-R --use-color -Dd+r$Du+b'
export PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

alias ls='ls -alhF --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias k='kubectl'
alias unzip+='unzip -O sjis'

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

if command -v kubectl &> /dev/null; then
  source <(kubectl completion bash)
  complete -F __start_kubectl k
fi
if command -v helm &> /dev/null; then
  source <(helm completion bash)
fi

