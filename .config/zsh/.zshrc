#補完機能系設定
autoload -U compinit;	compinit -d $HOME/.cache/zsh/.zcompdump
setopt magic_equal_subst	# =以降も補完するらしい
setopt auto_list	#補完候補を一覧表示する
setopt correct	#ミスタイプして存在しないコマンド打ってもやさしくしてくれる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
#表示系設定
setopt print_eight_bit	#日本語ファイル名表示
zstyle ':completion:*' list-colors "${LS_COLORS}"

setopt AUTO_MENU
setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt interactive_comments
setopt share_history
setopt hist_reduce_blanks
setopt hist_ignore_space

