return {
	"nvim-tree/nvim-tree.lua",
	keys = {
		{
			"<C-n>",
			"<cmd>NvimTreeToggle<cr>",
		},
	},
	opts = {
		view = {
			side = "right",
			adaptive_size = true,
			number = true,
			relativenumber = true,
		},
		git = {
			ignore = false,
		},
	},
}
