local M = {}

M.setup = function()
  require('toggleterm').setup{
    open_mapping = [[<c-t>]],
    hide_numbers = true,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    -- This field is only relevant if direction is set to 'float'
    float_opts = {
      border = 'rounded',
      width = math.floor(vim.o.columns * 0.8),
      heigth = math.floor(vim.o.lines * 0.8)
    }
  }
end

local Terminal  = require('toggleterm.terminal').Terminal

M.lazygit = Terminal:new({
  cmd = 'lazygit',
  dir = vim.fn.getcwd(),
  hidden = true,
  direction = 'float',
  float_opts = {
    border = "rounded",
  },
})

M.python3 = Terminal:new({
  cmd = 'python3',
  dir = vim.fn.getcwd(),
  direction = 'float',
  float_opts = {
    border = "rounded",
  },
})

M.espidf = Terminal:new({
  cmd = 'esp-idf-start',
  dir = vim.fn.getcwd(),
  direction = 'float',
  float_opts = {
    border = "rounded",
  },
})

M.shell = Terminal:new({
  dir = vim.fn.getcwd(),
  direction = 'float',
  float_opts = {
    border = "rounded",
  },
})

M.xplr = Terminal:new({
  cmd = 'xplr',
  dir = vim.fn.getcwd(),
  direction = 'float',
  float_opts = {
    border = "rounded",
  },
})

M.keybind = function ()
  vim.api.nvim_set_keymap(
  'n', '<Leader>\\g', [[<cmd>lua require("l-toggleterm").lazygit:toggle()<cr>]],
  { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
  'n', '<Leader>\\p', [[<cmd>lua require("l-toggleterm").python3:toggle()<cr>]],
  { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
  'n', '<Leader>\\e', [[<cmd>lua require("l-toggleterm").espidf:toggle()<cr>]],
  { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
  'n', '<Leader>\\t', [[<cmd>lua require("l-toggleterm").shell:toggle()<cr>]],
  { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
  'n', '<Leader>\\x', [[<cmd>lua require("l-toggleterm").xplr:toggle()<cr>]],
  { noremap = true, silent = true }
  )
end

return M
