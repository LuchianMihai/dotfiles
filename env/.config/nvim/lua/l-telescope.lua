local M = {}

M.keybind = function()
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

return M
