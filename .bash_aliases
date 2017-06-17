setxkbmap -option "caps:swapescape"

alias rebash='source $HOME/.bashrc'
alias tmux='tmux -2'
alias ack='ack-grep'
alias activate='. venv/bin/activate'

alias rm='rm -I'

export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PATH:$HOME/.local/bin:$HOME/installs:$PYENV_ROOT/bin

shrug(){ echo -n "¯\_(ツ)_/¯" | (xsel||pbcopy);echo "¯\_(ツ)_/¯ copied to your clipboard"; }

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
