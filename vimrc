filetype on
syntax on
colorscheme gruvbox
let mapleader=" "
set hidden
set history=100
set hlsearch

"Auto Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


"Plugin Section#

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'vimwiki/vimwiki'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

" Add plugins to &runtimepath
call plug#end()
