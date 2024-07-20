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
    -- TODO: lua-lanugage-server from system, mason installed one wont work because nixos dynamically linked libraries
    -- 'lua_ls',
    'phpactor',
    'jsonls',
    'vtsls',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
