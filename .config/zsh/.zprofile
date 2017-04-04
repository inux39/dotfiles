export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export DefaultIMModule=fcitx
CACHE_HOME=/tmp/inux39
export XDG_CACHE_HOME=$CACHE_HOME/.cache
if [ ! -e $CACHE_HOME ]; then
	mkdir $CACHE_HOME
	chmod 700 $CACHE_HOME
fi
if [ ! -e $XDG_CACHE_HOME/vim ]; then
	mkdir $XDG_CACHE_HOME/vim
fi
if [ ! -e $XDG_CACHE_HOME/zsh ]; then
	mkdir $XDG_CACHE_HOME/zsh
fi
if [ ! -e $CACHE_HOME/Downloads ]; then
	mkdir $CACHE_HOME/Downloads
fi

