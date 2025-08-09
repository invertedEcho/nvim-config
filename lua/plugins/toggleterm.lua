return {
	"akinsho/toggleterm.nvim",
	keys = {
		{ "<c-\\>",    "<cmd>ToggleTerm<cr>",                          desc = "Open ToggleTerm" },
		{ "<leader>g", "<cmd>TermExec cmd=lazygit direction=float<cr>" }
	},
	config = function
	()
		require("toggleterm").setup({})
		vim.keymap.set("t", "<c-\\>", "<c-\\><c-n>")
	end
}
