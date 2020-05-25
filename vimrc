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

let settings = {
          \   "pyls" : {
          \     "enable" : v:true,
          \     "trace" : { "server" : "verbose", },
          \     "commandPath" : "",
          \     "configurationSources" : [ "pycodestyle" ],
          \     "plugins" : {
          \       "jedi_completion" : { "enabled" : v:true, },
          \       "jedi_hover" : { "enabled" : v:true, },
          \       "jedi_references" : { "enabled" : v:true, },
          \       "jedi_signature_help" : { "enabled" : v:true, },
          \       "jedi_symbols" : {
          \         "enabled" : v:true,
          \         "all_scopes" : v:true,
          \       },
          \       "mccabe" : {
          \         "enabled" : v:true,
          \         "threshold" : 15,
          \       },
          \       "preload" : { "enabled" : v:true, },
          \       "pycodestyle" : { "enabled" : v:true, },
          \       "pydocstyle" : {
          \         "enabled" : v:false,
          \         "match" : "(?!test_).*\\.py",
          \         "matchDir" : "[^\\.].*",
          \       },
          \       "pyflakes" : { "enabled" : v:true, },
          \       "rope_completion" : { "enabled" : v:true, },
          \       "yapf" : { "enabled" : v:true, },
          \     }}}
call nvim_lsp#setup("pyls", settings)

" disable preview window
set completeopt-=preview

" use omni completion provided by lsp
set omnifunc=lsp#omnifunc
