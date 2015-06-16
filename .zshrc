#環境設定
##export LANG=ja_JP.utf8
PATH="$PATH":~/bin
PATH="$PATH":~/Chinachu
PROMPT="[%n@%m %~]%(!.#.$) "
alias ls='ls -alF --color=auto'
#補完機能系設定
autoload -U compinit;	compinit
setopt auto_list
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
#表示系設定
autoload -Uz colors
colors
setopt print_eight_bit
zstyle ':completion:*' list-colors "${LS_COLORS}"
#履歴設定
export HISTCONTROL=ignoredunps
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt AUTO_MENU
setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt interactive_comments
setopt share_history
setopt hist_reduce_blanks
setopt hist_ignore_space
