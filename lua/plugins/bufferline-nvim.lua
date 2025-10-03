return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	opts = {

		options = {
			diagnostics = "nvim_lsp",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					seperator = true,
				},
				{
					filetype = "oil",
					text = "Oil",
					seperator = true,
				},
			},
		},
	},
	keys = {
		{
			"<tab>",
			"<cmd>BufferLineCycleNext<cr>",
		},
		{
			"<s-tab>",
			"<cmd>BufferLineCyclePrev<cr>",
		},
		{
			"<leader>bp",
			"<cmd>BufferLineTogglePin<cr>",
		},
		{
			"<leader>bb",
			"<cmd>BufferLinePick<cr>",
		},
		{
			"<leader>bc",
			"<cmd>BufferLinePickClose<cr>",
		},
		{
			"<leader>bo",
			"<cmd>BufferLineCloseOthers<cr>",
			desc = "Close all other buffers except current one",
		},
	},
}
