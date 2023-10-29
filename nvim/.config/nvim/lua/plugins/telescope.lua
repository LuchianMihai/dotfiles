-- plugins/telescope.lua:
return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = 'make',
      config = function()
        require("telescope").load_extension("fzf")
      end
    },
    { 
      'nvim-telescope/telescope-file-browser.nvim',
      config = function()
        require("telescope").load_extension("file_browser")
      end
    }
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
      },
      file_browser = {
        dir_icon = 'd',
        dir_icon_hl = 'Default',
        theme = "ivy"
      }
    }
  },
  keys = {
    { '<leader>ff', function() require("telescope.builtin").find_files() end, desc = "Telescope find files" },
    { '<leader>fb', function() require("telescope.builtin").buffers() end, desc = "Telescope buffers" },
    { '<leader>fd', function() require("telescope").extensions.file_browser.file_browser() end, desc = "Telescope file browser" }
  }
}
