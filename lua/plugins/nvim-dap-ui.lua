return {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
        require("dapui").setup()
    end,
    keys = {
        {
            "<leader>do",
            function()
                require("dapui").toggle()
            end,
        },
        { "<leader>db", "<cmd>DapToggleBreakpoint<cr>" },
        { "<leader>dc", "<cmd>DapContinue<cr>" },
    },
}
