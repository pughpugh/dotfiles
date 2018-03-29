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

if [ -f ~/.bash_local ]; then
  source ~/.bash_local
fi
