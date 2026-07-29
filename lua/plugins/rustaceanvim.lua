return {
    "mrcjkb/rustaceanvim",
    version = "^9",
    lazy = false, -- This plugin is already lazy
    config = function()
        vim.g.rustaceanvim = {
            tools = {
                enable_clippy = false, -- test whether this improves performance
            },
            -- server = {
            --     default_settings = {
            --         ["rust-analyzer"] = {
            --             cargo = { targetDir = "target_rust_analyzer" }, -- test whether this improves performance
            --         },
            --     },
            -- },
        }
    end,
}
