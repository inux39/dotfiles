
### 起動時に一度だけでも十分な設定をここに
export EDITOR=vim
export LANG=ja_JP.UTF-8
export GOPATH=$HOME/.go
PATH="$PATH":$HOME/bin:$HOME/.cargo/bin

### 一時ディレクトリ作成
if [ ! -e $HOME/.cache/zsh ]; then
	mkdir $HOME/.cache/zsh
fi
if [ ! -e $HOME/.cache/vim ]; then
	mkdir $HOME/.cache/vim
fi

