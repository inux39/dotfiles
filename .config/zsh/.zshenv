export ZDOTDIR=$HOME/.config/zsh
export HISTCONTROL=ignoredunps
export XDG_CACHE_HOME=$HOME/.cache
export HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history
export HISTSIZE=100
export SAVEHIST=100
export LANG=ja_JP.UTF-8
export EDITOR=vim
export GOPATH=$HOME/.go
export PATH="$PATH:$HOME/bin"
export XDG_CACHE_HOME=$HOME/.cache
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

