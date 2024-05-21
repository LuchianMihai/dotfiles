require'dap'.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" }
}

require'dap'.configurations.c = {
  {
    name = "Native GDB Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
    stopAtBeginningOfMainSubprogram = true,
  },
}
