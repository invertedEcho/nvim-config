return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "rafamadriz/friendly-snippets" },

	version = "1.*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- disables completion when in dressing input
		enabled = function()
			return not vim.list_contains({ "DressingInput" }, vim.bo.filetype)
				and vim.bo.buftype ~= "prompt"
				and vim.b.completion ~= false
		end,
		keymap = {
			preset = "default",
			["<C-j>"] = { "select_next" },
			["<C-k>"] = { "select_prev" },
			["<CR>"] = { "select_and_accept", "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = { documentation = { auto_show = true }, ghost_text = {
			enabled = true,
		} },

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
