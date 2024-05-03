return {
	{
		--Completion source for Luasnip, for LSPs
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip", -- Provides completions for nvim-cmp
		dependencies = {
			"saadparwaiz1/cmp_luasnip", --This executes the data in the snippet in the buffer
			"rafamadriz/friendly-snippets", --For VScode snippets for completion
		},
	},
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" }, -- For completions from the Language Server
					{ name = "luasnip" }, -- For luasnip completions
					{ name = "buffer" },
				}),
			})
		end,
	},
}
