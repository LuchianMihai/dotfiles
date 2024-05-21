return {
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    dependencies = {
    },
    opts = {
    }
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    lazy = true
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    opts = {
      ui = {
        border = "rounded",
        width = 0.8,
        height = 0.8,
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  }
}
