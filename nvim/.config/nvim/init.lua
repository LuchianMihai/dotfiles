vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.expandtab = true
vim.opt.foldmethod = "manual"
vim.opt.laststatus = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.g.mapleader = ","
vim.g.neovide_gui = 'auto'

if vim.g.neovide then
  vim.g.neovide_padding_top = 3
  vim.g.neovide_padding_bottom = 3
  vim.g.neovide_padding_right = 3
  vim.g.neovide_padding_left = 3

  vim.o.guifont = "Fira Code:h11"
end

vim.api.nvim_create_autocmd(
  "TermOpen",
  {
    group = vim.api.nvim_create_augroup(
      "TerminalSettings",
      { clear = true }
    ),
    callback = function ()
      vim.opt_local.relativenumber = false
      vim.opt_local.number = false
      vim.cmd.startinsert()
      local opts = {
        noremap = true,
        silent = true,
        buffer = true
      }
      -- TODO: change to vim.keymap.set
      vim.keymap.set('t', '<C-n>', '<C-\\><C-n>', opts)
      -- vim.api.nvim_buf_set_keymap(0, 't', '<C-w>h', '<C-\\><C-n><C-w>h', opts)
      -- vim.api.nvim_buf_set_keymap(0, 't', '<C-w>j', '<C-\\><C-n><C-w>j', opts)
      -- vim.api.nvim_buf_set_keymap(0, 't', '<C-w>k', '<C-\\><C-n><C-w>k', opts)
      -- vim.api.nvim_buf_set_keymap(0, 't', '<C-w>l', '<C-\\><C-n><C-w>l', opts)
    end
  }
)

require("config.lazy")
