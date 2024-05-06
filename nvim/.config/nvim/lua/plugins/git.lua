return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = {
    kind = "auto",
    log_view = {
      kind = "vsplit"
    },
    commit_select_view = {
      kind = "replace",
    },
    reflog_view = {
      kind = "vsplit",
    },
  }
}
