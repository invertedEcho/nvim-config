return {
	"stevearc/overseer.nvim",
	---@module 'overseer'
	---@type overseer.SetupOpts
	opts = {},
	keys = {
		{ "<leader>or", "<cmd>OverseerRun<cr>" },
		{ "<leader>oo", "<cmd>OverseerOpen<cr>" },
		{ "<leader>oc", "<cmd>OverseerClose<cr>" },
	},
}
