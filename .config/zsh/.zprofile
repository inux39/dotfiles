### 起動時に一度だけでも十分な設定をここに
### 一時ディレクトリ作成
DIR=/tmp/`whoami`
CACHE=$DIR/.cache

install -o `whoami` -g `whoami` -m 700 -d $DIR
install -o `whoami` -g `whoami` -m 700 -d $DIR/Downloads
install -o `whoami` -g `whoami` -m 700 -d $CACHE

install -o `whoami` -g `whoami` -d $CACHE/vim
install -o `whoami` -g `whoami` -d $CACHE/vim/backup
install -o `whoami` -g `whoami` -d $CACHE/vim/swap
install -o `whoami` -g `whoami` -d $CACHE/vim/undo
install -o `whoami` -g `whoami` -d $CACHE/zsh
touch $CACHE/vim/viminfo.txt

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

