return {
	{
		'dmtrKovalenko/fff.nvim',
		build = function()
			require("fff.download").download_or_build_binary()
		end,
		opts = { -- (optional)
			debug = {
				enabled = false,     -- we expect your collaboration at least during the beta
				show_scores = false, -- to help us optimize the scoring system, feel free to share your scores!
			},
		},
		lazy = false,
		keys = {
			{
				"<leader>ff",
				function() require('fff').find_files() end,
				desc = 'FFFind files',
			},
			{
				"<leader>fg",
				function() require('fff').live_grep() end,
				desc = 'LiFFFe grep',
			},
			{
				"<leader>fz",
				function() require('fff').live_grep({
					grep = {
						modes = { 'fuzzy', 'plain' }
					}
				}) end,
				desc = 'Live fffuzy grep',
			},
			{
				"<leader>fc",
				function() require('fff').live_grep({ query = vim.fn.expand("<cword>") }) end,
				desc = 'Search current word',
			},
		}
	}
}
