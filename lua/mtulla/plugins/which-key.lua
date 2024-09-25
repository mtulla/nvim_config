return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- keep default config.
	},
	config = function()
		local wk = require("which-key")
		-- Document different keybinding groups
		wk.add({
			{ "<leader>e", group = "(e)xplorer - File Tree" },
			{ "<leader>f", group = "(f)ind - Fuzzy find" },
			{ "<leader>h", group = "(h)unk - Git" },
			{ "<leader>i", group = "w(i)ndow - Manage sessions" },
			{ "<leader>l", group = "(l)sp - Language Server" },
			{ "<leader>m", group = "for(m)at - Formatting" },
			{ "<leader>n", group = "(n)o - Clear highlighting" },
			{ "<leader>s", group = "(s)plit - Manage Panes" },
			{ "<leader>t", group = "(t)abs - Manage Tabs" },
			{ "<leader>v", group = "(v)env - Venv Selector" },
			{ "<leader>x", group = "(x) - Trouble" },
		})
	end,
}
