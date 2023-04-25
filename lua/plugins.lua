return require('packer').startup(function(use)
  use 'astashov/vim-ruby-debugger'
  use 'chrisbra/Colorizer'
  use 'editorconfig/editorconfig-vim'
  use 'ethanholz/nvim-lastplace'
  use 'junegunn/fzf.vim'
  use 'kchmck/vim-coffee-script'
  use 'lisposter/vim-blackboard'
  use 'w0rp/ale'
  use 'wbthomason/packer.nvim'

  require'nvim-lastplace'.setup{}
end)

