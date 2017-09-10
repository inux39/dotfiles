
export ZDOTDIR=$HOME/.config/zsh
export LANG=ja_JP.UTF-8
export EDITOR=vim
export GOPATH=$HOME/.go
# [name@host directory] (%|#)
export PROMPT="[%n@%m %~]%(!.#.$) "
autoload -U colors && colors
alias ls='ls -alhF --color=auto'
alias sudo='sudo -E'
alias emacs='vim'

export XDG_CACHE_HOME=$HOME/.cache

export HISTCONTROL=ignoredunps
export HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history
export HISTSIZE=100
export SAVEHIST=100

