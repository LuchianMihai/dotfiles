local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.clangd.setup{
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
  },
  capabilities = capabilities
}
