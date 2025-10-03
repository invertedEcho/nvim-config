-- Plugin keymaps
-- TODO: should eventually move them all into their plugin spec into the keys field
vim.keymap.set("n", "<leader>o", "<cmd>Oil<cr>")
vim.keymap.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>tt", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>tc", "<cmd>Telescope resume<cr>")
vim.keymap.set("n", "<leader>th", "<cmd>Telescope find_files hidden=true<cr>")
vim.keymap.set("n", "<leader>tq", "<cmd>TodoQuickFix<cr>")

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
