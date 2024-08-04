local utils = require('invertedEcho.utils')

require('flutter-tools').setup({
  debugger = {
    enabled = false,
    run_via_dap = false,
  },
})

utils.setKey('n', '<leader>fc', '<cmd>FlutterRun<cr>')
utils.setKey('n', '<leader>fr', '<cmd>FlutterRestart<cr>')
utils.setKey('n', '<leader>fe', '<cmd>FlutterEmulators<cr>')
utils.setKey('n', '<leader>fq', '<cmd>FlutterQuit<cr>')
