lua require('plugins')

set backspace=2           "Fix backspace not working in OSX
set expandtab             "turn tabs into whitespace
set hlsearch              "highight search
set mouse=r               "enable mouse scroll
set nofoldenable          "disable folding
set number                "show line numbers
set shiftwidth=2          "indent width for autoindent
set smartindent           "autoindent
set splitbelow            "always h split below current split
set splitright            "always v split right current split
set tabstop=2             "set tab character to 2 characters
set wrap!                 "disable line wrapping

colorscheme blackboard
let g:ale_fixers = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }
let g:colorizer_auto_filetype='scss,css,html,haml,erb,js'

filetype plugin indent on "enable filetype plugin
syntax on                 "enable syntax highlighting

