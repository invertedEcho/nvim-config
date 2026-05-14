return {
    "akinsho/toggleterm.nvim",
    lazy = false,
    config = function()
        require("toggleterm").setup({})

        vim.keymap.set("n", "<c-\\>", "<cmd>ToggleTerm<cr>")
        vim.keymap.set("t", "<c-\\>", "<c-\\><c-n>")
        vim.keymap.set("n", "<leader>g", "<cmd>TermExec cmd=lazygit direction=float<cr>")
    end,
}
