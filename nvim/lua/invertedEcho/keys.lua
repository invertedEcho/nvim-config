local utils = require('invertedEcho.utils')

-- stay in visual mode after indenting
utils.setKey('v', '<', '<gv')
utils.setKey('v', '>', '>gv')

-- move in insert mode
utils.setKey('i', '<c-h>', '<left>')
utils.setKey('i', '<c-j>', '<down>')
utils.setKey('i', '<c-k>', '<up>')
utils.setKey('i', '<c-l>', '<right>')

-- switch buffers
utils.setKey('n', '<c-h>', '<c-w>h')
utils.setKey('n', '<c-j>', '<c-w>j')
utils.setKey('n', '<c-k>', '<c-w>k')
utils.setKey('n', '<c-l>', '<c-w>l')

-- resize buffers
utils.setKey('n', '<C-S-k>', '<c-w>2-')
utils.setKey('n', '<C-S-j>', '<c-w>2+')
utils.setKey('n', '<C-S-h>', '<c-w>5<')
utils.setKey('n', '<C-S-l>', '<c-w>5>')

-- delete buffer
utils.setKey('n', '<leader>x', '<cmd>bd<cr>')
utils.setKey('n', '<leader>ax', '<cmd>%bd|e#<cr>')

-- dap -> move to dap.lua once moved from plugins.lua into seperate file
utils.setKey('n', '<leader>db', '<cmd>DapToggleBreakpoint<cr>')
utils.setKey('n', '<leader>dc', '<cmd>DapContinue<cr>')
utils.setKey('n', '<leader>di', '<cmd>DapStepInto<cr>')
utils.setKey('n', '<leader>do', '<cmd>DapStepOut<cr>')
utils.setKey('n', '<leader>dt', '<cmd>Terminate<cr>')
