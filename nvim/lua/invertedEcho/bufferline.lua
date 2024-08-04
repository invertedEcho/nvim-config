local bufferline = require('bufferline')
local utils = require('invertedEcho.utils')

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

utils.setKey('n', '<tab>', '<cmd>BufferLineCycleNext<cr>')
utils.setKey('n', '<s-tab>', '<cmd>BufferLineCyclePrev<cr>')
utils.setKey('n', '<leader>bp', '<cmd>BufferLineTogglePin<cr>')
utils.setKey('n', '<leader>bb', '<cmd>BufferLinePick<cr>')
utils.setKey('n', '<leader>bc', '<cmd>BufferLinePickClose<cr>')
utils.setKey('n', '<leader>bo', '<cmd>BufferLineCloseOthers<cr>')
