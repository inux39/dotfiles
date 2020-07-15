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
setup $CACHE/vim/backup
setup $CACHE/vim/swap
setup $CACHE/vim/undo
touch $CACHE/vim/viminfo.txt
setup $CACHE/zsh

if [ -e $CACHE/zsh/color ]; then
    COLOR=$(<$CACHE/zsh/color)
    BGCOLOR=$(($COLOR - 256))
    BGCOLOR=${BGCOLOR#-}
else
    COLOR=$(($RANDOM % 256))
    BGCOLOR=$(($COLOR - 256))
    BGCOLOR=${BGCOLOR#-}
    echo $COLOR>$CACHE/zsh/color
fi
export PROMPT="%F{$COLOR}%K{$BGCOLOR}[%n@%m %~]
%(!.#.$)%f%k "

