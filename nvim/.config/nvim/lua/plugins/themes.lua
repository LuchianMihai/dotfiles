return {
  {
      "ellisonleao/gruvbox.nvim",
      lazy = false,
      name = "gruvbox",
    priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        vim.cmd.colorscheme('gruvbox')
        vim.cmd.highlight('Normal guibg=NONE ctermbg=NONE')
        vim.cmd.highlight('NormalFloat guibg=NONE')
        vim.cmd.highlight('FloatBorder guibg=NONE')
      end
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        vim.cmd.colorscheme('catppuccin')
        vim.cmd.highlight('Normal guibg=NONE ctermbg=NONE')
        vim.cmd.highlight('NormalFloat guibg=NONE')
        vim.cmd.highlight('FloatBorder guibg=NONE')
    end,
    opts = {
      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
}
