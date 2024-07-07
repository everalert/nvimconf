-- see for more opts & ideas: 
-- https://github.com/hrsh7th/nvim-cmp
-- https://www.youtube.com/watch?v=GuIcGxYqaQQ

local check_backspace = function()
	local col = vim.fn.col "." - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered({
			border = {"","","","│","","","","│"},
		}),
		documentation = cmp.config.window.bordered({
			border = {"","","","║","","","","║"},
		}),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), 
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		--['<C-b>'] = cmp.mapping.scroll_docs(-4),
		--['<C-f>'] = cmp.mapping.scroll_docs(4),
		--['<C-e>'] = cmp.mapping.abort(),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
		-- { name = 'buffer' }, 
		{ name = 'path' }, 
	}),
	formatting = {
		fields = {"kind", "abbr", "menu"},
		format = function(entry, vim_item)
			vim_item.kind = string.sub(vim_item.kind, 1, 3)
			vim_item.menu = ({
				luasnip = "Snip",
				buffer = "Buf",
				path = "Path",
			})[entry.source.name]
			return vim_item
		end,
	},
	experimental = {
		ghost_text = true,
		--native_menu = false,
	}
})
