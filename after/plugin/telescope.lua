local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>Ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>Fp', builtin.git_files, {})
vim.keymap.set('n', '<leader>Fgw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>Fgs', function()
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
