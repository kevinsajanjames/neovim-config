-- Splilts arrays and objects into multiple lines or single line
return {
	"Wansmer/treesj",
	keys = { "<space>m", "<space>j", "<space>s" },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("treesj").setup({--[[ your config ]]
		})
	end,
}
