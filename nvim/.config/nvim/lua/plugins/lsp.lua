return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "mason.nvim",
    "mason-lspconfig.nvim"
  },
 keys = {
    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    { '<space>e', function() vim.diagnostic.openfloat() end,  mode = 'n' },
    { '[d',       function() vim.diagnostic.goto_prev() end,  mode = 'n' },
    { ']d',       function() vim.diagnostic.goto_next() end,  mode = 'n' },
    { '<space>q', function() vim.diagnostic.setloclist() end, mode = 'n' }
  },

  config = function()
    -- Setup language servers.
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()


    require('lspconfig.ui.windows').default_options.border = 'rounded'

    -- why do I need this?
    -- local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    -- function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    --   opts = opts or {}
    --   opts.border = 'rounded'
    --   return orig_util_open_floating_preview(contents, syntax, opts, ...)
    -- end

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Disable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = nil

        -- Disable tagfunc triggered by CTRL-], CTRL-W_], CTRL-W_}
        vim.bo[ev.buf].tagfunc = nil

        -- Disable formatexpr
        -- vim.bo[ev.buf].formatexpr = nil

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration,
          { buffer = ev.buf, desc = "goto declaration" })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition,
          { buffer = ev.buf, desc = "goto definition" })
        vim.keymap.set('n', 'K', vim.lsp.buf.hover,
          { buffer = ev.buf, desc = "show hover information" })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,
          { buffer = ev.buf, desc = "goto implementation" })
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help,
          { buffer = ev.buf, desc = "show signature help" })
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder,
          { buffer = ev.buf, desc = "add workspace folder" })
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder,
          { buffer = ev.buf, desc = "remove workspace folder" })
        vim.keymap.set('n', '<space>wl',
          function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
          { buffer = ev.buf, desc = "list workspace folders" })
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition,
          { buffer = ev.buf, desc = "goto type definition" })
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename,
          { buffer = ev.buf, desc = "rename symbol" })
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action,
          { buffer = ev.buf, desc = "code action" })
        vim.keymap.set('n', 'gr', vim.lsp.buf.references,
          { buffer = ev.buf, desc = "find references" })
        vim.keymap.set('n', '<space>f', function()
          vim.lsp.buf.format { async = true }
        end, { buffer = ev.buf, desc = "format document" })
      end,
    })

    lspconfig.clangd.setup{
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
      },
      capabilities = capabilities
    }

    lspconfig.lua_ls.setup {
      on_init = function(client)
        local path = client.workspace_folders[1].name
        if not vim.loop.fs_stat(path..'/.luarc.json') and
          not vim.loop.fs_stat(path..'/.luarc.jsonc') then
          client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
            Lua = {
              runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT'
              },
              -- Make the server aware of Neovim runtime files
              workspace = {
                checkThirdParty = false,
                library = {
                  vim.env.VIMRUNTIME
                  -- "${3rd}/luv/library"
                  -- "${3rd}/busted/library",
                }
                -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                -- library = vim.api.nvim_get_runtime_file("", true)
              }
            }
          })

          client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
        end
        return true
      end,
      capabilities = capabilities
    }


  end
}
