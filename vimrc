"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

"Vundle plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'w0rp/ale'
Plugin 'lisposter/vim-blackboard'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf.vim'
Plugin 'chrisbra/Colorizer'

call vundle#end()
filetype plugin indent on

set backspace=2     "Fix backspace not working in OSX
set number
set wrap!
set smartindent
set nofoldenable
set tabstop=2       "set tab character to 2 characters
set expandtab       "turn tabs into whitespace
set shiftwidth=2    "indent width for autoindent
set hlsearch        "highlight search
set background=dark
set t_Co=256        "enable 256 colors
set splitright      "always v split right current split
set splitbelow      "always h split below current split
set omnifunc=syntaxcomplete#Complete
set wildmode=longest:full,full

let g:colorizer_auto_filetype='scss,css,html,haml,erb,js'
let g:ale_fixers = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }

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

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

nnoremap <silent> <C-f> :Files<CR>
