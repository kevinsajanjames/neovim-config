-- Splilts arrays and objects into multiple lines or single line
return {
	"Wansmer/treesj",
	keys = { { "<leader>tsj", "<cmd>TSJToggle<CR>", { desc = "Toggle Join/Splilt List" } } },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("treesj").setup({--[[ your config ]]
		})
	end,
}
