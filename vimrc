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

" disable preview window
set completeopt-=preview

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END

lua << EOF
local nvim_lsp = require'nvim_lsp'

local on_attach = function(client, bufnr)
  -- Set the omnifunc for this buffer.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Configure some mappings for this buffer.
  local opts = { noremap=true, silent=true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
end

nvim_lsp.intelephense.setup({ on_attach=on_attach })
EOF

