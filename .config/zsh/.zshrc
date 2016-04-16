#環境設定
autoload -U colors && colors
export EDITOR=vim
export LANG=ja_JP.UTF-8
PROMPT="[%n@%m %~]%(!.#.$) "	#[name@host directory] %|#
alias ls='ls -alF --color=auto'
alias mkdir='mkdir -p'
alias make='make -j'
alias rsync='rsync -P'
alias clang++='clang++ -std=c++11'
alias g++='g++ -std=c++11'
alias sudo='sudo -E'
#共通
PATH="$PATH":~/bin
#Server
PATH="$PATH":~/Chinachu
#Client
PATH="$PATH":/opt/Qt/5.5/gcc_64/bin	#そのうち消す
#ほか機能系
#setopt auto_cd	#いらない可能性	#一応無効化
#補完機能系設定
autoload -U compinit;	compinit
setopt magic_equal_subst	# =以降も補完するらしい
setopt auto_list	#補完候補を一覧表示する
setopt correct	#ミスタイプして存在しないコマンド打ってもやさしくしてくれる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
#表示系設定
setopt print_eight_bit	#日本語ファイル名表示
zstyle ':completion:*' list-colors "${LS_COLORS}"
#履歴設定
export HISTCONTROL=ignoredunps
HISTFILE=~/.config/zsh/.zsh_history
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

