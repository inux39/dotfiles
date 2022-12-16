### 起動時に一度だけでも十分な設定をここに
### 一時ディレクトリ作成
DIR=/tmp/$(whoami)
CACHE=$DIR/.cache

install -m 700 -d $DIR
install -m 700 -d $CACHE

install -d $CACHE/vim
install -d $CACHE/vim/backup
install -d $CACHE/vim/swap
install -d $CACHE/vim/undo
install -d $DIR/Downloads
touch $CACHE/vim/viminfo.txt

