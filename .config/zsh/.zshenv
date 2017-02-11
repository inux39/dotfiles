export LANG=ja_JP.UTF-8
export ZDOTDIR=$HOME/.config/zsh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx
if [ ! -e $HOME/tmp/vim ]; then
	mkdir $HOME/tmp/vim
fi
if [ ! -e $HOME/tmp/zsh ]; then
	mkdir $HOME/tmp/zsh
fi

