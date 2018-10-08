call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'chrisbra/Colorizer' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake' 
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'suoto/vim-hdl'
Plug 'vim-latex/vim-latex'
Plug 'dylanaraps/wal'
Plug 'godlygeek/tabular'
call plug#end()

colorscheme wal

let g:lightline = { 
	\ 'colorscheme': 'wombat',
	\ }

set number
set relativenumber
set cursorline
set showmatch
set hlsearch
set shortmess+=c
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set completeopt+=menuone
set nohlsearch
set magic
