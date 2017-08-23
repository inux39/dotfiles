
export ZDOTDIR=$HOME/.config/zsh
export LANG=ja_JP.UTF-8
export EDITOR=vim
export GOPATH=$HOME/.go
PATH="$PATH":$HOME/bin:$HOME/.cargo/bin
# [name@host directory] (%|#)
PROMPT="[%n@%m %~]%(!.#.$) "
autoload -U colors && colors
alias ls='ls -alhF --color=auto'
alias sudo='sudo -E'
alias emacs='vim'

DIR=/tmp/`whoami`
export XDG_CACHE_HOME=$DIR/.cache

autoload -U compinit;	compinit -d $XDG_CACHE_HOME/zsh/.zcompdump

export HISTCONTROL=ignoredunps
HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history
HISTSIZE=100
SAVEHIST=100

