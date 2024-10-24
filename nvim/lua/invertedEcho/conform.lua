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
    -- to be used with the prettier php plugin -> requires setup in your php project
    php = { 'prettierd' },
    nix = { 'alejandra' },
  },
})
