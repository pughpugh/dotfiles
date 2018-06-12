"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'w0rp/ale'
Plugin 'lisposter/vim-blackboard'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'
Plugin 'ctrlp.vim'

call vundle#end()
filetype plugin indent on

let g:vim_markdown_folding_disabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

set backspace=2    "Fix backspace not working in OSX
set number
set wrap!
set noshowmode
set smartindent
set tabstop=2      "set tab character to 2 characters
set expandtab      "turn tabs into whitespace
set shiftwidth=2   "indent width for autoindent
set hlsearch
set omnifunc=syntaxcomplete#Complete

filetype indent on "indent depends on filetype

"Set color scheme
colorscheme blackboard
syntax enable

filetype plugin on

au BufRead,BufNewFile *.md set filetype=markdown

"Remember position in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
