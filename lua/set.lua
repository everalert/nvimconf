vim.opt.nu = true
vim.opt.rnu = true

vim.opt.foldenable = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

local cc = '81'
for i=82,512 do cc=cc..','..i end
vim.opt.colorcolumn = cc

vim.opt.smartindent = true
 
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = 'yes'
vim.opt.numberwidth = 5

vim.opt.updatetime = 50


vim.diagnostic.config({
	virtual_text = false,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
--	signs = true,
--	underline = true,
--	update_in_insert = true,
--	severity_sort = false,
})

vim.loader.enable()
