set nocompatible
set backspace=indent,eol,start
" format
set autoindent
set nu
set smartindent
set showmatch
set textwidth=80
set title
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


colorscheme molokai
let g:molokai_original = 1
set t_Co=256

"always show file name
set modeline
set ls=2
" files 
filetype on
filetype indent on
filetype plugin on
syntax on
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/majutsushi/tagbar'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'https://github.com/Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
call plug#end()
"let g:deoplete#enable_at_startup = 1
"set completeopt+=noselect
"call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_calls = 1

map <c-m> :Commentary<cr>
