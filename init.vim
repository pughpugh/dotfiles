set backspace=2                "Fix backspace not working in OSX
set expandtab                  "turn tabs into whitespace
set hlsearch                   "highight search
set mouse=r                    "enable mouse scroll
set nofoldenable               "disable folding
set number                     "show line numbers
set rtp+=/opt/homebrew/opt/fzf "fzf
set shell=/bin/bash            "set shell to bash
set shiftwidth=2               "indent width for autoindent
set smartindent                "autoindent
set spell                      "enable spell check
set spelllang=en_gb            "set spell check language
set splitbelow                 "always h split below current split
set splitright                 "always v split right current split
set tabstop=2                  "set tab character to 2 characters
set wrap!                      "disable line wrapping

let g:copilot_node_command = "~/.volta/bin/node"
lua require('plugins')


colorscheme blackboard
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_fixers = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }
let g:colorizer_auto_filetype='scss,css,html,haml,erb,js'

filetype plugin indent on "enable filetype plugin
syntax on                 "enable syntax highlighting

"allow esc to exit terminal mode
tnoremap <esc> <C-\><C-N>

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

