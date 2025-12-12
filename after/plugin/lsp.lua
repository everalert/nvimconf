-- TODO: map on attach
vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<C-Down>', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<C-Up>', vim.diagnostic.goto_prev, opts)


-- TODO: actually configure lol
local servers = { 
	tsserver = {}, 
	pylsp = {}, 
	zls = {
		cmd = { 'zls' },
		filetypes = { 'zig', 'zir' },
		root_markers = { 'zls.json', 'build.zig', '.git' },
		single_file_support = true,
		workspace_required = false,	
	}, 
	clangd = {}, 
	gopls = {}, 
	lua_ls = {}, 
	ts_ls = {}, 
	tinymist = {
		cmd = { 'tinymist' },
		filetypes = { 'typ', 'typst' },
		settings = {
			lint = {
				enabled = true,
				when = "onSave",
			},
			formatterMode = "typstyle",
		},
	}, 
	["asm-lsp"] = {
		cmd = { 'asm-lsp' },
		filetypes = { 'asm', 's', 'S' },
		root_markers = { '.git' },
		single_file_support = true,
		workspace_required = false,
	}, 
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require("cmp_nvim_lsp").default_capabilities())

vim.lsp.config('*', { capabilities = capabilities })

for s, c in pairs(servers) do
	c.capabilities = vim.tbl_deep_extend('force', {}, capabilities, c.capabilities or {})
	vim.lsp.config(s, c)
	vim.lsp.enable(s)
end

vim.api.nvim_create_autocmd("BufWritePre", { pattern = "*.go", callback = function() vim.lsp.buf.format() end })
vim.api.nvim_create_autocmd("BufWritePre", { pattern = "*.py", callback = function() vim.lsp.buf.format() end })
vim.api.nvim_create_autocmd("BufWritePre", { pattern = "*.zig", callback = function() vim.lsp.buf.format() end })
vim.api.nvim_create_autocmd("BufWritePre", { pattern = "*.typ", callback = function() vim.lsp.buf.format() end })

vim.diagnostic.config({
	virtual_text = true,
})
