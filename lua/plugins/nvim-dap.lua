return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        dap.adapters.codelldb = {
            type = "executable",
            -- the absolute path is bad, but cant do much here, codelldb is just a binary inside a vscode extension.
            -- too lazy to package this for nix.
            command = "/home/echo/dev/codelldb-extension/adapter/codelldb",
        }
        -- hi, future me. for rust, debug configurations come from rustaceanvim plugin. just :RustLsp debuggables
    end,
}
