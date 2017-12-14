set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"


"----------------------------------------
"" Syntax/Indent for language enhancement
"----------------------------------------
Plugin 'sudar/vim-arduino-syntax'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()             " required
filetype plugin indent on     " required!

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
syntax on
set expandtab tabstop=4 softtabstop=4 shiftwidth=4 fdm=marker
colo desert
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
