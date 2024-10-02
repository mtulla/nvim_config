return {
	"Exafunction/codeium.nvim",
	commit = "937667",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({
			enable_chat = true,
		})
	end,
}
