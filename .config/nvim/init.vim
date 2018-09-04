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
call plug#end()

colorscheme onedark
set background=dark
set tgc

let g:lightline = { 
	\ 'colorscheme': 'one',
	\ }

set number
set tabstop=2
