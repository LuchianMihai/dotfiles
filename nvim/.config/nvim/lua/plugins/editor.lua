return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 300
    end,
    opts = {
      key_labels = {
      },
      window = {
        border = "rounded"
      }
    }
  },
  {
    "numToStr/FTerm.nvim",
    opts = {
      border = "rounded"
    },
    keys = {
      {
        '<leader>\\t',
        function() require("FTerm").toggle() end,
        mode = "n",
        desc = "fterm toogle"
      },
      {
        '<leader>\\g',
        function() require("FTerm").scratch({cmd = 'lazygit'}) end,
        mode = "n",
        silent = true,
        desc = "open lazygit"
      },
      {
        '<leader>\\i',
        function() require("FTerm").scratch({cmd = 'ipython'}) end,
        mode = "n",
        silent = true,
        desc = "open ipyhton"
      }
    }
  }
}
