ln -si ~/dotfiles/vimrc ~/.vimrc
ln -si ~/dotfiles/bashrc ~/.bashrc
ln -si ~/dotfiles/bash_profile ~/.bash_profile

if [ "$HOSTNAME" = "morbo.local" ]; then
  ln -si ~/dotfiles/bashrc_morbo ~/.bashrc_local
elif [ "$HOSTNAME" = "taco" ]; then
  ln -si ~/dotfiles/bashrc_taco ~/.bashrc_local
fi
