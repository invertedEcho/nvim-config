return {
	"hrsh7th/nvim-cmp",
	lazy = false,
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<c-j>"] = cmp.mapping.select_next_item(),
				["<c-k>"] = cmp.mapping.select_prev_item(),
				["<C-i>"] = cmp.mapping.confirm({ select = true }),
				["<C-space>"] = cmp.mapping.complete(),
			}),
			window = {
				completion = cmp.config.window.bordered({}),
				documentation = cmp.config.window.bordered({}),
			},
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
			}),
		})
	end,
}
