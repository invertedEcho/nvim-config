return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
        vim.cmd("colorscheme tokyonight-storm")
        -- local diags = {
        -- 	"DiagnosticUnderlineError",
        -- 	"DiagnosticUnderlineWarn",
        -- 	"DiagnosticUnderlineInfo",
        -- 	"DiagnosticUnderlineHint",
        -- }

        -- for _, group in ipairs(diags) do
        -- 	vim.api.nvim_set_hl(0, group, {
        -- 		undercurl = false,
        -- 		underline = true,
        -- 	})
        -- end
    end,
}
