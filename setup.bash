#!/bin/zsh
set -Ceu
_PATH=$(cd $(dirname $0); pwd)
install -d $HOME/bin
ln -sf $_PATH/scripts/keta* $HOME/bin/.
ln -sf /usr/lib/systemd/systemd-cryptsetup $HOME/bin/.
# bash
ln -sf $_Path/.config/bash $HOME/.config/bash
ln -sf $HOME/.config/bash/.bash_profile $HOME/.
ln -sf $HOME/.config/bash/.bashrc $HOME/.
ln -sf $HOME/.config/bash/.inputrc $HOME/.
. $HOME/.bash_profile
ln -sf /tmp/$(whoami)/.cache $HOME/.
ln -sf /tmp/$(whoami)/Downloads $HOME/.
ln -sf /tmp/$(whoami)/Downloads "$HOME/ダウンロード"
rm -fr $HOME/.thumbnails
ln -s $HOME/.cache/thumbnails $HOME/.thumbnails

# vimrc
install -d $HOME/.vim
ln -fs $_PATH/.vim/vimrc $HOME/.vim/vimrc

install -d $HOME/.config/fontconfig
ln -sf $_PATH/.config/fontconfig/fonts.conf \
    $HOME/.config/fontconfig/fonts.conf
ln -sf $_PATH/.gitconfig $HOME/.gitconfig
ln -sf $_PATH/.config/tmux/tmux.conf $HOME/.tmux.conf
ln -sf $_PATH/.config/pipewire $HOME/.config/.

