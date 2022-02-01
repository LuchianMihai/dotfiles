-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
function(use)
   -- Packer can manage itself
   use { 'wbthomason/packer.nvim',
      config = function()
         vim.api.nvim_set_keymap(
            'n', '<Leader>ps', '<cmd>PackerStatus<cr>', 
            { noremap = true, silent = true }
         )
      end
   }
   use { 
      'nvim-telescope/telescope.nvim', 
      requires = { {'nvim-lua/plenary.nvim'} },
      config = function()
         vim.api.nvim_set_keymap(
            'n', '<Leader>ff', '<cmd>Telescope find_files<cr>',
            { noremap = true, silent = true }
         )
         vim.api.nvim_set_keymap(
            'n', '<Leader>fg', '<cmd>Telescope live_grep<cr>',
            { noremap = true, silent = true }
         )
         vim.api.nvim_set_keymap(
            'n', '<Leader>fb', '<cmd>Telescope buffers<cr>',
            { noremap = true, silent = true }
         )
         vim.api.nvim_set_keymap(
            'n', '<Leader>fh', '<cmd>Telescope help_tags<cr>',
            { noremap = true, silent = true }
         )
      end
   }
   use {
      'voldikss/vim-floaterm'
   }
   use {
      'morhetz/gruvbox',
      config = function()
         vim.cmd[[colorscheme gruvbox]]
         vim.cmd[[highlight Normal guibg=NONE ctermbg=NONE]]
         vim.cmd[[highlight NormalFloat guibg=NONE]]
         vim.cmd[[highlight FloatBorder guibg=NONE]]
      end
   }
end,

config = {
   display = {
      open_fn = function()
         return require('packer.util').float({ border = 'single' })
      end
   }
}

})
