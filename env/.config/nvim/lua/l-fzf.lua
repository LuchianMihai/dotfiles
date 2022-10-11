local M = {}

M.keybind = function()
  vim.api.nvim_set_keymap(
  'n', '<Leader>ff', '<cmd>FzfLua files<cr>',
  { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
  'n', '<Leader>fb', '<cmd>FzfLua buffers<cr>',
  { noremap = true, silent = true }
  )
end

return M
