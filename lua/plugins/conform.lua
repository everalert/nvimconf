return {
	'stevearc/conform.nvim',
	opts = {
		formatters_by_ft = {
			asm = { "x86fmt", lsp_format = "fallback" },
		},
		formatters = {
			-- TODO: review https://github.com/stevearc/conform.nvim?tab=readme-ov-file#options
			x86fmt = {
				command = "x86fmt",
				stdin = true,
			},
		}, 
	},
}
