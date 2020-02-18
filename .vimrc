set nu
set cursorline
syntax on

set encoding=utf-8
set number relativenumber

set background=dark
color PaperColor

" to enable spaces instead of tabs, right something like
set expandtab
set tabstop=4
set shiftwidth=4

set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey

" List necessary plugins
call plug#begin('~/.vim/plugged')
Plug 'ntpeters/vim-better-whitespace'
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
" Plug 'Valloric/YouCompleteMe', {'do': 'python install.py --clang-completer'}
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'RRethy/vim-illuminate'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" Bind NERDTree to be toggable
map <C-n> :NERDTreeToggle<CR>

" set path to headers
let &path.="/usr/include"

augroup numbertoogle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber

augroup END
