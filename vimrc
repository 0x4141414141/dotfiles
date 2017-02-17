filetype on
syntax on
colorscheme gruvbox
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set background=dark
let mapleader=" "
set hidden
set history=100
set hlsearch
set cm=blowfish
let g:vimwiki_list = [{'path': '~/wiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]
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
Plug 'junegunn/goyo.vim'
Plug 'gabrielelana/vim-markdown'
Plug 'mmai/vim-markdown-wiki'
Plug 'https://github.com/prashanthellina/follow-markdown-links'
" Add plugins to &runtimepath
call plug#end()
Plug 'morhetz/gruvbox'
