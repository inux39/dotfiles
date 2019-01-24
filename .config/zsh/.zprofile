### 起動時に一度だけでも十分な設定をここに
### 一時ディレクトリ作成
DIR=/tmp/`whoami`
CACHE=$DIR/.cache
if [ ! -e $DIR ]
then
    mkdir $DIR
    chmod 700 $DIR
 fi

if [ ! -e $DIR/Downloads ]
then
    mkdir $DIR/Downloads
    chmod 700 $DIR/Downloads
fi

if [ ! -e $CACHE ]
then
    mkdir $CACHE
    chmod 700 $CACHE
    mkdir $CACHE/ccache
fi

if [ ! -e $CACHE/zsh ]
then
    mkdir $CACHE/zsh
fi

if [ ! -e $CACHE/vim ]
then
    mkdir $CACHE/vim
    touch $CACHE/vim/viminfo.txt
fi

if [ ! -L $HOME/.cache ]
then
    rm -fr $HOME/.cache
    ln -s /tmp/`whoami`/.cache $HOME/.cache
fi

