local utils = require('invertedEcho.utils')
local toggleterm = require('toggleterm')

toggleterm.setup({})

utils.setKey('n', '<c-\\>', '<cmd>ToggleTerm<cr>')
utils.setKey(
  'n',
  '<leader>g',
  '<cmd>TermExec cmd="lazygit" direction=float<cr>'
)
utils.setKey('t', '<c-\\>', '<C-\\><C-n>')
