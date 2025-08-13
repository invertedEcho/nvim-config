return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		delete_to_trash = true,
		skip_confirm_for_simple_edits = true,
		watch_for_changes = true,
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
}
