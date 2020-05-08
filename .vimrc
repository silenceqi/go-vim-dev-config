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
Plug 'Shougo/neocomplete.vim'
call plug#end()
let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
  endif
let g:neocomplete#sources#omni#input_patterns.go = '[^. *\t]\.\w*'
