return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        dap.adapters.codelldb = {
            type = "executable",
            command = "codelldb",
        }
        dap.adapters.lldb = {
            type = "executable",
            command = "lldb",
        }
        -- hi, future me. for rust, debug configurations come from rustaceanvim plugin. just :RustLsp debuggables
    end,
}
