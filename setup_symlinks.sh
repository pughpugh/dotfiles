ln -si ~/dotfiles/vimrc ~/.vimrc
ln -si ~/dotfiles/bash_profile ~/.bash_profile

if [ "$HOSTNAME" = "morbo.local" ]; then
  ln -si ~/dotfiles/bash_profile_morbo ~/.bash_local
fi
