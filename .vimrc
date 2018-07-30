set nu
set cursorline
syntax on

set background=dark
color PaperColor

" to enable spaces instead of tabs, right something like
" set expandtab
set tabstop=8
set shiftwidth=8

set exrc
set secure

set list
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵

set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey

" List necessary plugins
call plug#begin('~/.vim/plugged')
Plug 'ntpeters/vim-better-whitespace'
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe', {'do': 'python install.py --clang-completer'}
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'RRethy/vim-illuminate'
call plug#end()

" Bind NERDTree to be toggable
map <C-n> :NERDTreeToggle<CR>

" set path to headers
let &path.="/usr/include"

