local utils = require('invertedEcho.utils')
local telescope = require('telescope')

telescope.setup({
  pickers = {
    colorscheme = {
      enable_preview = true,
    },
    -- Can you really not set a theme globally??
    find_files = {
      theme = 'ivy',
    },
    live_grep = {
      theme = 'ivy',
    },
    buffers = {
      theme = 'ivy',
    },
  },
})
utils.setKey('n', '<leader>tf', '<cmd>Telescope find_files<cr>')
utils.setKey('n', '<leader>tt', '<cmd>Telescope live_grep<cr>')
utils.setKey('n', '<leader>ty', '<cmd>Telescope resume<cr>')
utils.setKey(
  'n',
  '<leader>th',
  '<cmd>Telescope find_files hidden=true no_ignore=true<cr>'
)
utils.setKey('n', '<leader>tb', '<cmd>Telescope buffers<cr>')
utils.setKey('n', '<leader>tc', '<cmd>Telescope commands<cr>')
