call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'dag/vim-fish'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

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

autocmd FileType fish compiler fish
autocmd FileType fish setlocal textwidth=79
autocmd FileType fish setlocal foldmethod=expr

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

" airline config
let g:airline#extensions#ale#enabled = 1
