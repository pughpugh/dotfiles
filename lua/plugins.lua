return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'w0rp/ale'
  use 'lisposter/vim-blackboard'
  use 'editorconfig/editorconfig-vim'
  use 'junegunn/fzf.vim'
  use 'chrisbra/Colorizer'
  use 'kchmck/vim-coffee-script'
  use 'ethanholz/nvim-lastplace'

  require'nvim-lastplace'.setup{}
end)

