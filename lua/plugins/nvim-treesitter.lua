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
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "*" },
			callback = function(ev)
				local lang = vim.treesitter.language.get_lang(ev.match)
				if
					lang
					and vim.tbl_contains(
						vim.tbl_map(function(p)
							return vim.fn.fnamemodify(p, ":t:r")
						end, vim.api.nvim_get_runtime_file("parser/*", true)),
						lang
					)
				then
					vim.treesitter.start()
					if vim.treesitter.query.get(lang, "indents") then
						vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					end
				end
			end,
		})
	end,
}
