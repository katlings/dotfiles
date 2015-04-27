setxkbmap -option "caps:swapescape"

alias rebash='source $HOME/.bashrc'
alias gosource='cd $HOME/mesa/go/src/igneous.io'
alias tmux='tmux -2'
alias remake='make wipe && make clean && make && make topo12'

export GOPATH=$HOME/mesa/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
