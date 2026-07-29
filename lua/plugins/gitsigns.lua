return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            on_attach = function(bufnr)
                vim.keymap.set("n", "<leader>p", "<cmd>Gitsigns preview_hunk<cr>")
            end,
        })
    end,
}
