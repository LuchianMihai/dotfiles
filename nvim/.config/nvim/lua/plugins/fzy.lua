-- plugins/telescope.lua:
return {
  {
    "ibhagwan/fzf-lua",
    enabled = false,
    keys = {
      { '<leader>ff',   function() require("fzf-lua").files() end, desc = "FzfLua find files" },
      { '<leader>fb',   function() require("fzf-lua").buffers() end, desc = "FzfLua find buffers" },

      { '<leader>lr',   function() require("fzf-lua").lsp_refences() end, desc = "FzfLua lsp references" },
      { '<leader>lds',  function() require("fzf-lua").lsp_document_symbols() end, desc = "FzfLua lsp document symbols" },

    },
    opts = {
      {'telescope'}
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    enabled = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = 'make',
        config = function()
          require("telescope").load_extension("fzf")
        end
      },
    },
    opts = {
      defaults = {
        file_ignore_patterns = {
          'build/'
        },
      },
      pickers = {
        find_files = {
          theme = "ivy"
        },
        buffers = {
          theme = "ivy"
        }
      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        }
      }
    },
    keys = {
      { '<leader>ff', function() require("telescope.builtin").find_files() end, desc = "Telescope find files" },
      { '<leader>fb', function() require("telescope.builtin").buffers() end, desc = "Telescope buffers" },

      { '<leader>lds', function() require("telescope.builtin").lsp_document_symbols() end, desc = "Telescope file browser" }
    }
  }
}
