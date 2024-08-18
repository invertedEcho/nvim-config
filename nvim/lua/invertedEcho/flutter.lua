local utils = require('invertedEcho.utils')

require('flutter-tools').setup({
  debugger = {
    enabled = false,
    run_via_dap = false,
  },
})

utils.setKey('n', '<leader>fc', '<cmd>Telescope flutter commands<cr>')
