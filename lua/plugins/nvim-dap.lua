return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		dap.adapters.codellb = {
			type = "server",
			port = "${port}",
			executable = {
				command = "/home/invertedecho/lldb/adapter/codelldb",
				args = { "--port", "${port}" },
			},
		}
		dap.configurations.rust = {
			{
				name = "Launch file",
				type = "codellb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}
	end,
}
