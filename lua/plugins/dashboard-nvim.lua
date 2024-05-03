-- TODO:look for aperture science ascii art
return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				header = {
					[[                                                     ]],
					[[  __  __                 __  __                      ]],
					[[ /\ \/\ \               /\ \/\ \  __                 ]],
					[[ \ \ `\\ \     __    ___\ \ \ \ \/\_\    ___ ___     ]],
					[[  \ \ , ` \  /'__`\ / __`\ \ \ \ \/\ \ /' __` __`\   ]],
					[[   \ \ \`\ \/\  __//\ \L\ \ \ \_/ \ \ \/\ \/\ \/\ \  ]],
					[[    \ \_\ \_\ \____\ \____/\ `\___/\ \_\ \_\ \_\ \_\ ]],
					[[     \/_/\/_/\/____/\/___/  `\/__/  \/_/\/_/\/_/\/_/ ]],
					[[                                                     ]],
					[[                                                     ]],
				},
				footer = { " ", " ", "Ignorance is our Ammunition." },
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Apps",
						group = "DiagnosticHint",
						action = "Telescope app",
						key = "a",
					},
					{
						desc = " dotfiles",
						group = "Number",
						action = "Telescope dotfiles",
						key = "d",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
