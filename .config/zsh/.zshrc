#環境設定
autoload -U colors && colors
export EDITOR=vim
export LANG=ja_JP.UTF-8
PROMPT="[%n@%m %~]%(!.#.$) "	#[name@host directory] %|#
alias ls='ls -alhF --color=auto'
alias mkdir='mkdir -p'
alias rsync='rsync --progress'
alias sudo='sudo -E'
alias dd='dd status=progress bs=32M'
export GOPATH=$HOME/.go
PATH="$PATH":$HOME/bin
PATH="$PATH":$HOME/.cargo/bin
#ほか機能系
#setopt auto_cd	#いらない可能性	#一応無効化
#補完機能系設定
autoload -U compinit;	compinit -d $HOME/tmp/.zcompdump
setopt magic_equal_subst	# =以降も補完するらしい
setopt auto_list	#補完候補を一覧表示する
setopt correct	#ミスタイプして存在しないコマンド打ってもやさしくしてくれる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
#表示系設定
setopt print_eight_bit	#日本語ファイル名表示
zstyle ':completion:*' list-colors "${LS_COLORS}"
#履歴設定
export HISTCONTROL=ignoredunps
HISTFILE=$HOME/tmp/.zsh_history
HISTSIZE=100
SAVEHIST=100
setopt AUTO_MENU
setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt interactive_comments
setopt share_history
setopt hist_reduce_blanks
setopt hist_ignore_space

