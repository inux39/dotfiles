
### 起動時に一度だけでも十分な設定をここに
DIR=/tmp/`whoami`
export XDG_CACHE_HOME=$DIR/.cache
### 一時ディレクトリ作成
if [ ! -e $DIR ]; then
	mkdir -p $DIR/Downloads
	mkdir $XDG_CACHE_HOME
	chmod 700 $DIR
fi
if [ ! -e $XDG_CACHE_HOME/zsh ]; then
	mkdir $XDG_CACHE_HOME/zsh
fi
if [ ! -e $XDG_CACHE_HOME/vim ]; then
	mkdir $XDG_CACHE_HOME/vim
fi

