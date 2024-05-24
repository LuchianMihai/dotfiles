return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 300
    end,
    opts = {
      window = {
        border = "rounded"
      }
    }
  },
  {
    'stevearc/oil.nvim',
    enabled = false,
    opts = {
      float = {
        max_width = { 40, 0.8 },
        max_height = { 40, 0.8 },
      }
    },
  },
  {
    "numToStr/FTerm.nvim",
    opts = {
      border = "rounded"
    },
    keys = {
      {
        '<leader>tt',
        function() require("FTerm").toggle() end,
        mode = "n",
        desc = "fterm toogle"
      },
      {
        '<leader>tg',
        function() require("FTerm").scratch({cmd = 'lazygit'}) end,
        mode = "n",
        silent = true,
        desc = "open lazygit"
      }
    }
  }
}
