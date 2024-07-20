require('toggleterm').setup({})

SetKey('n', '<c-\\>', '<cmd>ToggleTerm<cr>')
SetKey('n', '<leader>g', '<cmd>TermExec cmd="lazygit" direction=float<cr>')
SetKey('t', '<c-\\>', '<C-\\><C-n>')
