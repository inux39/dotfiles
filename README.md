dotfiles
===
##auto
* .config/fontconfig
* .config/zsh
* .gitconfig
* .xprofile
* vimrc

##manual
* .config/xfce4/terminal
* .Xmodmap `xorg-xmodmap`
* .gitignore
* .ffmpeg/
* .ssh/rc

##Vim Plugin Install Command
###vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###NeoBundle

###Dein

##sshfs
mount

`sshfs user@remote:/remotedir localdir`

umount
`fusermount -u mountdir`

