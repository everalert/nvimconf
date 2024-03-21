local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end

vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
	'nvim-lua/plenary.nvim',

	'neovim/nvim-lspconfig',

	{ 'nvim-telescope/telescope.nvim', 
		tag = '0.1.4',
		-- or, branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'BurntSushi/ripgrep',
			'sharkdp/fd',
		},
	},

	{ 'nvim-treesitter/nvim-treesitter', 
		config = function() vim.cmd(':TSUpdate') end,
	},

	'nvim-treesitter/playground',

	'habamax/vim-godot',

	'ziglang/zig.vim',

	{ 'theprimeagen/harpoon',
		branch = 'harpoon2',
		dependencies = {'nvim-lua/plenary.nvim'},
	},

	{ 'windwp/nvim-ts-autotag',
		config = function()
			require('nvim-ts-autotag').setup({
				filetypes = { 'html', 'javascript', 'typescript', 'javascriptreact',
					'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
					'css', 'lua', 'xml', 'php', 'markdown' }
			})
		end,
	},

	{ "windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end,
	},

	'Mofiqul/vscode.nvim',

	{ 'nvim-lualine/lualine.nvim',
		dependencies = { 
			{'nvim-tree/nvim-web-devicons'},
		}
	},

	'tweekmonster/startuptime.vim',
})
