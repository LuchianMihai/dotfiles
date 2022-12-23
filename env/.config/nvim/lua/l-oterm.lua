local M = {}
local oterm = require('oterm')
M.keybind = function()
  vim.keymap.set('n', '<leader>ol', function()
    oterm.open({
      name = 'lazygit',
      layout = 'center',
      height = 0.7, -- 70% height of nvim size
      width = 0.7, -- 60% width of nvim size
      command = 'lazygit',
      win_api = {
        style = 'minimal',
        relative = 'editor',
        border = 'rounded'
      },
    })
  end)
end
return M
