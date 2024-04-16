--local lsp = require('lsp-zero')

--lsp.preset('recommended')

--lsp.on_attach(function(client, bufnr)
--	local opts = {buffer = bufnr, remap = false}
--	vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
--	vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
--	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--	vim.keymap.set('n', '<C-Down>', vim.diagnostic.goto_next, opts)
--	vim.keymap.set('n', '<C-Up>', vim.diagnostic.goto_prev, opts)
--end)

--lsp.setup()

vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<C-Down>', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<C-Up>', vim.diagnostic.goto_prev, opts)

local lspconfig = require('lspconfig')
--lspconfig.tsserver.setup{}
--lspconfig.pyright.setup{}
--lspconfig.zls.setup{}
local on_attach = function(_, bufnr)
	--vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	--require('completion').on_attach()
end
local servers = { 'tsserver', 'pyright', 'zls', 'clangd' }
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}
end
