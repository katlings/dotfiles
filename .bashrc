# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export GOPATH=$HOME/mesa/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

#case $TERM in
#    xterm*)
#        PS1="\[\033]0;\w\007\]${USER}@${HOSTNAME} \\$ "
#        ;;
#    *)
#        PS1="${USER}@${HOSTNAME} \\$ "
#        ;;
#esac

setxkbmap -option "caps:swapescape"

alias la='ls -a'
alias ll='ls -l'
alias rebash='source $HOME/.bash_profile'
alias grep='grep --color'
