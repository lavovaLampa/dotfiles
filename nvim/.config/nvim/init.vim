call plug#begin('~/.vim/plugged')

" Vim plugins
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'

" Language plugins
Plug 'dag/vim-fish'
Plug 'dense-analysis/ale'

" Themes
Plug 'projekt0n/github-nvim-theme'

call plug#end()


" Setup common editing options
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number relativenumber
set mouse=a
set termguicolors
set cursorline
set showmatch
set ignorecase
set smartcase
filetype plugin indent on

" Setup theme
lua require('github-theme').setup()

autocmd FileType fish compiler fish
autocmd FileType fish setlocal textwidth=79
autocmd FileType fish setlocal foldmethod=expr

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

" airline config
let g:airline#extensions#ale#enabled = 1
