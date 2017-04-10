
### 起動時に一度だけでも十分な設定をここに
### 一時ディレクトリ作成
if [ ! -e $HOME/.cache/zsh ]; then
	mkdir $HOME/.cache/zsh
fi
if [ ! -e $HOME/.cache/vim ]; then
	mkdir $HOME/.cache/vim
fi

