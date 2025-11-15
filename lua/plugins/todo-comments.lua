return { 
	"folke/todo-comments.nvim",

	dependencies = { 
		"nvim-lua/plenary.nvim", 
		"nvim-treesitter/nvim-treesitter" 
	},

	opts = {
		signs = false,
		gui_style = {
			fg = 'BOLD',
			bg = 'NONE',
		},
		highlight = {
			keyword = "bg",
			after = ""
		},
	}
}
