# SSH
ssh-add -K ~/.ssh/id_rsa ~/.ssh/unicorn &>/dev/null

# Git
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk

# Paths
P=(
  /usr/local/sbin
  $HOME/bin
  $HOME/.node/bin
  $HOME/.rvm/bin
  ./node_modules/.bin
  /usr/local/opt/go/libexec/bin
  /opt/local/pgsql/bin
  $ANDROID_HOME/tools
  $ANDROID_HOME/platform-tools
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

# Postgres
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Unicorn
export UNICORN_TIMEOUT=90

# Terraform
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
  source "/usr/local/share/chtf/chtf.sh"
fi

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Alias
alias fs='foreman start -f Procfile'
alias t='bundle exec rspec'
alias ls='ls -G'
alias tree='tree -C'
alias vi='vim'
alias gogoroboreg='ruby -I./lib ./bin/robo_reg.rb'

# Docker
export DOCKER_HOST='tcp://unicorn:4243'

# Node
export NODE_PATH=/usr/local/lib/node_modules
export NODE_ENV=development

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Secrets
source ~/.bash_secrets

# Host completion
_complete_hosts () {
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    host_list=`{
        for c in /etc/ssh_config /etc/ssh/ssh_config ~/.ssh/config
        do [ -r $c ] && sed -n -e 's/^Host[[:space:]]//p' -e 's/^[[:space:]]*HostName[[:space:]]//p' $c
        done
        sed -n -e 's/^[0-9][0-9\.]*//p' /etc/hosts; }|tr ' ' '\n'|grep -v '*'`
    COMPREPLY=( $(compgen -W "${host_list}" -- $cur))
    return 0
}
complete -F _complete_hosts ssh
complete -F _complete_hosts host
