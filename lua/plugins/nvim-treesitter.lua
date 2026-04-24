return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"lua",
			"tsx",
			"javascript",
			"typescript",
			"css",
			"json",
			"toml",
			"rust",
			"comment",
			"php",
			"dart",
			"yaml",
			"python",
			"c_sharp",
			"cpp",
			"glsl",
		})
	end,
}
