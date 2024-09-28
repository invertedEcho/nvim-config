local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'eslint',
    'tailwindcss',
    'pyright',
    'bashls',
    -- see TODO in ./servers/luals.lua
    -- 'lua_ls',
    'phpactor',
    'jsonls',
    'cssls',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

require('lspconfig').jsonls.setup({
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
})
