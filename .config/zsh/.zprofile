### 起動時に一度だけでも十分な設定をここに
### 一時ディレクトリ作成
DIR=/tmp/`whoami`
CACHE=$DIR/.cache

function setup() {
    if [ ! -e $1 ]; then
        mkdir $1
    fi
}

function sec_setup() {
    setup $1
    chmod 700 $1
}

sec_setup $DIR
sec_setup $DIR/Downloads
sec_setup $CACHE
setup $CACHE/vim
touch $CACHE/vim/viminfo.txt
setup $CACHE/zsh

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

