return {
	{ 'mason-org/mason.nvim',
		opts = {
			PATH = "append",
			ensure_installed = {
				"pylsp",
				"gopls",
				"zls",
				"ts_ls",
				"lua_ls",
				"clangd",
				"asm-lsp",
				"tinymist",
			},
		},
	},

	'nvim-lua/plenary.nvim',

	{ 'nvim-telescope/telescope.nvim', 
		tag = '0.1.4',
		-- or, branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'BurntSushi/ripgrep',
			'sharkdp/fd',
		},
	},

	'ziglang/zig.vim',
	'habamax/vim-godot',

	{ "b0o/blender.nvim",
		config = function()
			require("blender").setup()
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"grapp-dev/nui-components.nvim",
			"mfussenegger/nvim-dap", -- Optional, for debugging with DAP
			"LiadOz/nvim-dap-repl-highlights", -- Optional, for syntax highlighting in the DAP REPL
		},	
	},

	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/cmp-nvim-lsp',

	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',

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

	{ 'nvim-lualine/lualine.nvim',
		dependencies = { 
			--{'nvim-tree/nvim-web-devicons'},
		}
	},

	'tweekmonster/startuptime.vim',
}
