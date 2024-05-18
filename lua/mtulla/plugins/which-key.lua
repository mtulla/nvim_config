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
		wk.register({
			s = {
				name = "(s)plit  - Manage Panes",
			},

			e = {
				name = "(e)xplorer - File Tree",
			},

			t = {
				name = "(t)abs - Manage Tabs",
			},

			f = {
				name = "(f)ind - Fuzzy find",
			},

			w = {
				name = "(w)indow - Manage sessions",
			},

			-- TODO: Fix this so that it actually checks for an LSP.
			l = {
				name = "(l)sp - Language Server",
			},

			x = {
				name = "(x) - Trouble",
			},

			m = {
				name = "for(m)at - Formatting",
			},

			-- TODO: Fix this so that it actually shows up.
			h = {
				name = "(h)unk - Git",
			},

			n = {
				name = "(n)o - Clear highlighting",
			},

			v = {
				name = "(v)env - Venv Selector",
			},
		}, { prefix = "<leader>" })
	end,
}
