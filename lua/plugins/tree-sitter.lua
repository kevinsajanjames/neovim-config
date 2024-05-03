return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{ "windwp/nvim-ts-autotag" },
	},
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				-- General
				"lua",
				"json",
				"yaml",
				"markdown",
				-- Wev Dev
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				-- Other Languages
				"python",
				"go",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
		})
	end,
}
