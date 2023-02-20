vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- <Leader>tm to enable table mode
  use 'dhruvasagar/vim-table-mode'
  use 'neovim/nvim-lspconfig'
  use 'jenterkin/vim-autosource'

end)

