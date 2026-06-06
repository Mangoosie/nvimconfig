return {
	'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	dependencies = { 
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-live-grep-args.nvim',	
	},
	config = function()
		local builtin = require('telescope.builtin')
		require('telescope').load_extension('live_grep_args')

		local builtin = require('telescope.builtin')
		local live_grep_args_shortcuts = require('telescope-live-grep-args.shortcuts')
		
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		vim.keymap.set('n', '<leader>gc', live_grep_args_shortcuts.grep_word_under_cursor, { desc = 'Grep word under cursor' })

		
		
	end
	}
