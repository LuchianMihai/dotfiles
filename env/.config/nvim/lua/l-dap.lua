local M = {}
local dap = require('dap')

M.python = function()

  dap.adapters.debugpy1 = {
    type = 'executable',
    command = 'python',
    args = { '-m', 'debugpy.adapter' },
  }

  dap.configurations.python = {
    {
      type = 'debugpy1',
      request = 'launch',
      name = 'Debug current file',
      program = '${file}', -- This configuration will launch the current file if used.
      pythonPath = 'python'
    }
  }

end

M.setup = function()
  vim.api.nvim_set_keymap(
  'n', '<Leader>dhh', ":lua require('dap.ui.widgets').hover()<cr>",
  { noremap = true, silent = true })

  vim.api.nvim_set_keymap(
  'n', '<Leader>dsc', ":lua require('dap').continue()<CR>",
  { noremap = true, silent = true })
  vim.api.nvim_set_keymap(
  'n', '<Leader>dsv', ":lua require('dap').step_over()<CR>",
  { noremap = true, silent = true })
  vim.api.nvim_set_keymap(
  'n', '<Leader>dsi', ":lua require('dap').step_into()<CR>",
  { noremap = true, silent = true })
  vim.api.nvim_set_keymap(
  'n', '<Leader>dso', ":lua require('dap').step_out()<CR>",
  { noremap = true, silent = true })

  vim.api.nvim_set_keymap(
  'n', '<Leader>dro', ":lua require('dap').repl.open()<CR>",
  { noremap = true, silent = true })
end

return M
