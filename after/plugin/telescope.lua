local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fgw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fgs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup {
	defaults = {
		file_ignore_patterns = {
			".git\\",
			".next\\",
			"node_modules\\",
		}
	}
}
