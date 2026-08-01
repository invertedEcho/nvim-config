vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true

vim.opt.signcolumn = "yes"

vim.o.termguicolors = true

if vim.g.neovide then
    vim.keymap.set("v", "<sc-c>", '"+y', { noremap = true }) -- copy in visual mode
    vim.keymap.set("i", "<sc-v>", "<C-r>+", { noremap = true }) -- paste in insert mode and stay in insert mode
    vim.keymap.set("n", "<sc-v>", '"+p', { noremap = true }) -- paste in normal mode
end
