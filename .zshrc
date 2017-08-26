export ZSH=/home/erick/.oh-my-zsh

ZSH_THEME="cloud"

unsetopt AUTO_CD
plugins=(git mercurial z)

# User configuration

  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games:/home/erick/bin:/home/erick/java/jdk1.8.0_25/bin:/home/erick/code/arcanist/bin/"
# export MANPATH="/usr/local/man:$MANPATH"

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

dockerst() {
    docker ps -q -f ancestor=st/lamp -f status=running
}

dexec() { 
    docker exec -tiu st $(dockerst) $*
}


fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i

export TERM="xterm-256color"

export VAGRANT_DOTFILE_PATH='/hdd/vagrant/'

# GO Lang shenanigans
export GOROOT=/usr/local/go

export GOPATH=$HOME/code/go

export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
