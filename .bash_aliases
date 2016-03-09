setxkbmap -option "caps:swapescape"

alias rebash='source $HOME/.bashrc'
alias tmux='tmux -2'
alias ack='ack-grep'
alias activate='. venv/bin/activate'

alias rm='rm -I'

export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:$HOME/.local/bin:$HOME/installs/go_appengine:$HOME/installs

shrug(){ echo -n "¯\_(ツ)_/¯" | (xsel||pbcopy);echo "¯\_(ツ)_/¯ copied to your clipboard"; }

source /$HOME/.local/bin/virtualenvwrapper.sh > /dev/null
export WORKON_HOME=$HOME/virtualenvs
export PROJECT_HOME=$HOME/pyprojects
