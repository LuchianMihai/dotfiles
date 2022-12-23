-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
  function(use)

    use {
      'wbthomason/packer.nvim',
      require = {
      }
    }

    use {
      'morhetz/gruvbox',
      config = function()
        vim.cmd[[
        colorscheme gruvbox
        highlight Normal guibg=NONE ctermbg=NONE
        highlight NormalFloat guibg=NONE
        highlight FloatBorder guibg=NONE
        ]]
      end
    }

    use {
      'nvim-treesitter/nvim-treesitter'
    }

    use {
      'ibhagwan/fzf-lua',
      config = function()
        local M = require('l-fzf')
        M.keybind()
      end
    }

    use {
      'akinsho/toggleterm.nvim',
      config = function()
        local M = require('l-toggleterm')
        M.setup()
        M.keybind()
      end
    }

    use {
      'neovim/nvim-lspconfig',
      requires = {
        'williamboman/nvim-lsp-installer',
        'hrsh7th/nvim-cmp'                                  --- required for completion
      },
      config = function()
      end
    }

    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline'
      },
      config = function()
        local M = require('l-cmp')
        M.setup()
      end
    }


--- disabled plugins ---

    use {
      'mfussenegger/nvim-dap',
      config = function()
        local M = require('l-dap')
        M.setup()
        M.python()
      end,
      disable = true
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        local M = require('l-telescope')
        M.keybind()
      end,
      disable = true
    }
  end,

  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end
    }
  }

})
