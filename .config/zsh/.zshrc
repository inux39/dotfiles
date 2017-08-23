
export PATH="$PATH":$HOME/bin:$HOME/.cargo/bin
# 補完機能系設定
## =以降も補完するらしい
setopt magic_equal_subst
## 補完候補を一覧表示する
setopt auto_list
## ミスタイプして存在しないコマンド打ってもやさしくしてくれる
setopt correct
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 表示系設定
## 日本語ファイル名表示
setopt print_eight_bit
zstyle ':completion:*' list-colors "${LS_COLORS}"
autoload -U compinit;	compinit -d $XDG_CACHE_HOME/zsh/.zcompdump

setopt AUTO_MENU
setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt interactive_comments
setopt share_history
setopt hist_reduce_blanks
setopt hist_ignore_space

