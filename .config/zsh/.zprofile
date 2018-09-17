### 起動時に一度だけでも十分な設定をここに
### 一時ディレクトリ作成
if [ ! -e /tmp/`whoami` ]
then
	mkdir /tmp/`whoami`
	chmod 700 /tmp/`whoami`
 fi

if [ ! -e /tmp/`whoami`/Downloads ]
then
	mkdir /tmp/`whoami`/Downloads
	chmod 700 /tmp/`whoami`/Downloads
fi

if [ ! -e /tmp/`whoami`/.cache ]
then
	mkdir /tmp/`whoami`/.cache
	chmod 700 /tmp/`whoami`/.cache
fi

if [ ! -e /tmp/`whoami`/.cache/zsh ]
then
	mkdir /tmp/`whoami`/.cache/zsh
fi

if [ ! -e /tmp/`whoami`/.cache/vim ]
then
	mkdir /tmp/`whoami`/.cache/vim
	touch /tmp/`whoami`/.cache/vim/viminfo.txt
fi

if [ ! -L $HOME/.cache ]
then
	rm -fr $HOME/.cache
	ln -s /tmp/`whoami`/.cache $HOME/.cache
fi

