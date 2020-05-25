set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')
Plug 'sudar/vim-arduino-syntax'
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neovim/nvim-lsp'
call plug#end()

filetype plugin indent on     " required!

set enc=utf-8 fenc=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
syntax on
set expandtab tabstop=4 softtabstop=4 shiftwidth=4 fdm=marker
colo desert
