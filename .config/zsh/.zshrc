export PATH="$PATH":$HOME/bin:$HOME/.cargo/bin
export PROMPT="%K{105}[%n@%m %~]
%(!.#.$)%k "
autoload -U colors && colors
autoload -U compinit;	compinit -d $XDG_CACHE_HOME/zsh/.zcompdump
zstyle ':completion:*' list-colors "${LS_COLORS}"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## alias
alias ls='ls -alhF --color=auto'
alias sudo='sudo -E'
alias emacs='vim'
## =以降も補完する
setopt magic_equal_subst
## 補完候補を一覧表示する
setopt auto_list
## ミスタイプして存在しないコマンド打ってもやさしくしてくれる
setopt correct
## 候補を補完
setopt auto_menu
## 履歴に追加(上書きしない)
setopt append_history
## 重複した履歴を表示しない
setopt hist_find_no_dups
## 同じ履歴(直前)を履歴に追加しない
setopt hist_ignore_dups
## 履歴の重複時に古いほうを削除
setopt hist_ignore_all_dups
## コマンドラインでも#以降をコメントアウト
setopt interactive_comments
## 他のターミナルと履歴を共有する
setopt share_history
## 余計なスペースを削除
setopt hist_reduce_blanks
## スペースから始まるコマンドは履歴に入れない
setopt hist_ignore_space
## 日本語など(8bit)対応
setopt print_eight_bit

