vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gR", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "ga", vim.lsp.buf.code_action)
vim.keymap.set("n", "ge", vim.diagnostic.open_float)

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
	underline = true,
})

vim.lsp.config("luals", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".luarc.jsonc" },
})
vim.lsp.enable("luals")

vim.lsp.enable("rust_analyzer")

vim.lsp.enable("nixd")

vim.lsp.enable("pyright")
