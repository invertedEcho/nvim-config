require('conform').setup({
  format_after_save = {
    async = true,
  },
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'black' },
    javascript = { 'prettierd' },
    typescript = { 'prettierd' },
    typescriptreact = { 'prettierd' },
    dart = { 'dart_format' },
  },
})
