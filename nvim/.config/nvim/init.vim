call plug#begin('~/.vim/plugged')

" Vim plugins
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf.vim'
Plug 'nvim-lualine/lualine.nvim'
" Lualine icons
Plug 'kyazdani42/nvim-web-devicons'

" Language plugins
Plug 'dag/vim-fish'
Plug 'dense-analysis/ale'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

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

" Lualine config
lua << EOF
require("lualine").setup({
    options = {
        theme = "github"
    }
})
EOF

" Theme config
lua << EOF
require("github-theme").setup({
    theme_style = "light_default"
})
EOF

autocmd FileType fish compiler fish
autocmd FileType fish setlocal textwidth=79
autocmd FileType fish setlocal foldmethod=expr

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif

