return {
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
