return {
	{
		"ms-jpq/coq_nvim",
		config = function()
			vim.cmd("COQnow -s")
		end,
	},
	{ "ms-jpq/coq.artifacts" },
}
