return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find Files"})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Live Grep"})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Find In Open Buffers"})
		vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {desc = "Find In Recent Files"})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Help Tags"})
		end
    }
