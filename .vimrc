set nu
set cursorline
syntax on

set encoding=utf-8
set number relativenumber

" to enable spaces instead of tabs, right something like
set expandtab
set tabstop=4
set shiftwidth=4

set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey

" enable system clipboard (dont forget to install xclip for X11
set clipboard=unnamedplus

" download plugin manager automagically
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" List necessary plugins
call plug#begin()
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

set background=dark
color PaperColor

" Bind NERDTree to be toggable
map <C-n> :NERDTreeToggle<CR>

" set path to headers
let &path.="/usr/include"

augroup numbertoogle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
