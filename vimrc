set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')
Plug 'mhartington/formatter.nvim'
Plug 'kyoh86/vim-ripgrep'
Plug 'dhruvasagar/vim-table-mode'
call plug#end()

filetype plugin indent on     " required!

set enc=utf-8 fenc=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
syntax on
set expandtab tabstop=4 softtabstop=4 shiftwidth=4 fdm=marker
colo desert

" disable preview window
set completeopt-=preview

lua require('formatter').setup(...)
" Provided by setup function
nnoremap <silent> <leader>f :Format<CR>

command! -nargs=+ -complete=file Ripgrep :call ripgrep#search(<q-args>)
