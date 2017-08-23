
### 起動時に一度だけでも十分な設定をここに
DIR=/tmp/`whoami`
### 一時ディレクトリ作成
if [ ! -e $DIR ]; then
	mkdir -p $DIR/Downloads
	mkdir $XDG_CACHE_HOME
	chmod 700 $DIR
fi
if [ ! -e $HOME/.cache/zsh ]; then; mkdir $HOME/.cache/zsh; fi
if [ ! -e $HOME/.cache/vim ]; then; mkdir $HOME/.cache/vim; fi

