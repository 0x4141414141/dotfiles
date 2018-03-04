filetype plugin on
set nocompatible
syntax on
colorscheme smyck
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


let g:notes_directories = ['~/vimnotes/']
"let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"let g:instant_markdown_autostart = 0	" disable autostart
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
"map <leader>md :InstantMarkdownPreview<CR>
"let vim_markdown_preview_github=1
nmap <leader>vv :!pandoc -t html -T 'Pandoc Generated - "%"' --smart --standalone --self-contained --data-dir %:p:h -c ~/dotfiles/pandoc/pandoc.css "%" \|~/dotfiles/pandoc/bcat<cr><cr>
"let g:vimwiki_list = [{'path': '~/vimwiki', 'template_path': '~/vimwiki/templates/',
          \ 'template_default': 'default', 'syntax': 'markdown', 'ext': '.md',
          \ 'path_html': '~/vimwiki/site_html/', 'custom_wiki2html': 'vimwiki_markdown',
          \ 'template_ext': '.tpl'}]



"Auto Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif



"Plugin Section#

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
"Plug 'junegunn/goyo.vim'
"Plug 'gabrielelana/vim-markdown'
"Plug 'mmai/vim-markdown-wiki'
"Plug 'https://github.com/prashanthellina/follow-markdown-links'
" Add plugins to &runtimepath
Plug 'brendonrapp/smyck-vim'
call plug#end()
