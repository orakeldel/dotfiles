return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")

      dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<Leader>db", function()
				require("dap").toggle_breakpoint()
			end)
			vim.keymap.set("n", "<Leader>dc", function()
				require("dap").continue()
			end)

			dap.configurations.python = {
				{
					-- The first three options are required by nvim-dap
					type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
					request = "launch",
					name = "Launch file",

					-- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

					program = "${file}", -- This configuration will launch the current file if used.
					pythonPath = function()
						local venv = os.getenv("VIRTUAL_ENV")
						if venv and venv ~= "" then
							return venv .. "/bin/python"
						end
						return "/usr/bin/python"
					end,
				},
			}
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
    config = function ()
      require("dap-python").setup("python")
    end
	},
}
