return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				-- to be used with the prettier php plugin -> requires setup in the project
				php = { "prettierd" },
				nix = { "alejandra" },
			},
			format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
		})
	end,
}
