### 起動時に一度だけでも十分な設定をここに
### 一時ディレクトリ作成
DIR=/tmp/$(whoami)
CACHE=$DIR/.cache

install -o $(whoami) -g $(groups) -m 700 -d $DIR
install -o $(whoami) -g $(groups) -m 700 -d $CACHE

install -o $(whoami) -g $(groups) -d $CACHE/vim
install -o $(whoami) -g $(groups) -d $CACHE/vim/backup
install -o $(whoami) -g $(groups) -d $CACHE/vim/swap
install -o $(whoami) -g $(groups) -d $CACHE/vim/undo
install -o $(whoami) -g $(groups) -d $CACHE/zsh
touch $CACHE/vim/viminfo.txt

