mkdir -p ~/.config/nvim

ln -si ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -si ~/dotfiles/lua ~/.config/nvim/lua
ln -si ~/dotfiles/bashrc ~/.bashrc
ln -si ~/dotfiles/bash_profile ~/.bash_profile

if [[ "$HOSTNAME" =~ ^morbo\. ]]; then
  ln -si ~/dotfiles/bashrc_morbo ~/.bashrc_local
elif [ "$HOSTNAME" = "taco" ]; then
  ln -si ~/dotfiles/bashrc_taco ~/.bashrc_local
fi
