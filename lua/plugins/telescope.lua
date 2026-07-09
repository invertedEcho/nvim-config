return {
    "nvim-telescope/telescope.nvim",
    version = "0.2.1",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- improves sorting performance
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
        { "<leader>tf", "<cmd>Telescope find_files<cr>" },
        {
            "<leader>tt",
            function()
                require("telescope.builtin").live_grep({
                    additional_args = { "--multiline" },
                })
            end,
        },
        { "<leader>tc", "<cmd>Telescope resume<cr>" },
        { "<leader>th", "<cmd>Telescope find_files hidden=true<cr>" },
        { "<leader>tb", "<cmd>Telescope buffers<cr>" },
    },
}
