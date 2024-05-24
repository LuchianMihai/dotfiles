return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "hrsh7th/cmp-nvim-lsp"
      },
      {
        "saadparwaiz1/cmp_luasnip",
        dependencies = {
          --- Dependency to local instance of L3MON4D3/LuaSnip
          "LuaSnip"
        }
      }
    },
    opts = {
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      window = {
        completion = require'cmp'.config.window.bordered(),
        documentation = require'cmp'.config.window.bordered(),
      },
      mapping = require'cmp'.mapping.preset.insert({
        ['<C-b>'] = require'cmp'.mapping.scroll_docs(-4),
        ['<C-f>'] = require'cmp'.mapping.scroll_docs(4),
        ['<C-Space>'] = require'cmp'.mapping.complete(),
        ['<C-e>'] = require'cmp'.mapping.abort(),
        ['<CR>'] = require'cmp'.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = require'cmp'.config.sources({
        -- { name = 'codeium' },
        { name = 'nvim_lsp' },
        -- { name = 'luasnip' },
        -- { name = 'buffer' },
      }),
      formatting = {
        format = function(entry, vim_item)
          -- Source
          vim_item.menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[Lua]",
            -- codeium =  "[AI]"
          })[entry.source.name]
          return vim_item
        end,
        fields = { "abbr", "kind", "menu" },
      },
    }
  },
  {
    "L3MON4D3/LuaSnip",
  },
}
