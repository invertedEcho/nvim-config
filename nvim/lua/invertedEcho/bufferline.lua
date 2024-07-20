local bufferline = require('bufferline')
bufferline.setup({
  options = {
    style_preset = {
      bufferline.style_preset.no_italic,
      bufferline.style_preset.no_bold,
    },
    diagnostics = 'nvim_lsp',
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = 'Directory',
        seperator = true,
      },
    },
  },
})

SetKey('n', '<tab>', '<cmd>BufferLineCycleNext<cr>')
SetKey('n', '<s-tab>', '<cmd>BufferLineCyclePrev<cr>')
SetKey('n', '<leader>bp', '<cmd>BufferLineTogglePin<cr>')
SetKey('n', '<leader>bb', '<cmd>BufferLinePick<cr>')
SetKey('n', '<leader>bc', '<cmd>BufferLinePickClose<cr>')
SetKey('n', '<leader>bo', '<cmd>BufferLineCloseOthers<cr>')
