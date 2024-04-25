return {
	--Mason is a package manager for Language Servers
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	--This plugin gives us the ensure installed option for Language Servers
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			ensure_installed = { "lua_ls", "cssls", "html", "tsserver", "pyright", "tailwindcss", "svelte" },
		},
	},
	--Plugin used to install linters and formatters, because the plugin above can only install lsps I think
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			local mason_tool_installer = require("mason-tool-installer")
			mason_tool_installer.setup({
				ensure_installed = {
					"prettierd", -- prettier formatter
					"stylua", -- lua formatter
					"isort", -- python formatter
					"black", -- python formatter
					"pylint",
					"eslint_d",
				},
			})
		end,
	},
	--This plugin communicates with the Lang Server and reports errors in the editor
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")

			--Language Servers
			lspconfig.tsserver.setup({})
			lspconfig.html.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.tailwindcss.setup({})

			--Keymaps
		end,
	},
}
