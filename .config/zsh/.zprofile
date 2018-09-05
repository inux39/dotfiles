### 起動時に一度だけでも十分な設定をここに
DIR=/tmp/`whoami`
### 一時ディレクトリ作成
if [ ! -e $DIR ]; then; mkdir $DIR; chmod 700 $DIR; fi

if [ ! -e $DIR/.cache ]; then; mkdir $DIR/.cache; fi
if [ ! -e $HOME/.cache/zsh ]; then; mkdir $HOME/.cache/zsh; fi
if [ ! -e $HOME/.cache/vim ]; then; mkdir $HOME/.cache/vim; fi
if [ ! -e $DIR/Downloads ]; then; mkdir $DIR/Downloads; fi

if [ ! -L $HOME/.cache ]; then;
	rm -fr $HOME/.cache
	ln -s $DIR/.cache $HOME/.cache
fi

