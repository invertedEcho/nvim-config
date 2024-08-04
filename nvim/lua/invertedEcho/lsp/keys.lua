local utils = require('invertedEcho.utils')

utils.setKey('n', 'gR', vim.lsp.buf.references)
utils.setKey('n', '<leader>rn', vim.lsp.buf.rename)
utils.setKey('n', 'ga', vim.lsp.buf.code_action)
utils.setKey('n', 'ge', vim.diagnostic.open_float)
utils.setKey('n', '<leader>oo', '<cmd>TSToolsRemoveUnusedImport<cr>')
utils.setKey('n', '<leader>am', '<cmd>TSToolsAddMissingImports<cr>')
