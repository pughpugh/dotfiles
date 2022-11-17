if [ -f ~/.bashrc_local ]; then
  source ~/.bashrc_local
fi

# Paths
P=(
  /usr/local/sbin
  $HOME/bin
  $HOME/.node/bin
  $HOME/.rvm/bin
  ./node_modules/.bin
  $PATH
)

PATH=$(IFS=:; echo "${P[*]}")
export PATH

# Prompt
export PS1='\[$(tput setaf 1)\][\u@\h]\[$(tput setaf 6)\][\w]\[$(tput setaf 2)\]$(__git_ps1 "[%s]") \[$(tput sgr0)\]';

# History - set to unlimited
export HISTFILESIZE=
export HISTSIZE=

# Aliases
alias ls='ls --color'
alias ls='ls -G'
alias tree='tree -C'
alias vi='vim'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export EDITOR=vim
