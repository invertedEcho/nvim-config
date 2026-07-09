-- Move cursor in insert mode
vim.keymap.set("i", "<c-h>", "<left>")
vim.keymap.set("i", "<c-l>", "<right>")
vim.keymap.set("i", "<c-k>", "<up>")
vim.keymap.set("i", "<c-j>", "<down>")

-- easier resize of buffers
-- note, M = alt. see :help key-notation
vim.keymap.set("n", "<M-k>", "<C-w>2-")
vim.keymap.set("n", "<M-j>", "<C-w>2+")
vim.keymap.set("n", "<M-h>", "<C-w>5<")
vim.keymap.set("n", "<M-l>", "<C-w>5>")

-- clear search with escape
vim.keymap.set("n", "<esc>", "<cmd>noh<cr>")

-- delete buffer
vim.keymap.set("n", "<leader>x", "<cmd>bd<cr>")
vim.keymap.set("n", "<leader>ax", "<cmd>%bd|e#<cr>")
