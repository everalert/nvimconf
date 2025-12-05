return {
	-- NORD
	-- 'shaunsingh/nord.nvim'
	
	-- NORDIC
	--'AlexvZyl/nordic.nvim'

	-- KANAGAWA
	'rebelot/kanagawa.nvim',
	config = function()
		require('kanagawa').setup({
			compile = true,
			--undercurl = false,
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
			--background = {
			--	dark = "dragon",
			--	light = "dragon",
			--},
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
							--bg_p1 = "#1D1D24", -- ColorColumn BG
						}
					}
				}
			},

			overrides = function(colors)
				local theme = colors.theme

				local mix_color = function(color)
					local c = require("kanagawa.lib.color")
					return { fg = color, bg = c(color):blend(theme.ui.bg, 0.65):to_hex() }
				end
				
				local mix_color_2b = function(fg_col, bg_col)
					local c = require("kanagawa.lib.color")
					return { fg = fg_col, bg = c(bg_col):blend(theme.ui.bg, 0.65):to_hex() }
				end

				local mix_color_2fb = function(fg_col, bg_col)
					local c = require("kanagawa.lib.color")
					return { 
						fg = c(fg_col):blend(theme.ui.fg, 0.65):to_hex(),
						bg = c(bg_col):blend(theme.ui.bg, 0.65):to_hex() 
					}
				end
				
				--local diag_color = function(color)
				--	local c = require("kanagawa.lib.color")
				--	return { bg = color, fg = "NONE" }
				--end

				return {
					--ColorColumn     = mix_color(theme.ui.bg_dim),
					ColorColumn     = mix_color_2b(colors.palette.oldWhite, theme.ui.bg_dim),
					--ColorColumn     = mix_color_2fb(colors.palette.fujiWhite, theme.ui.bg_dim),
					--ColorColumn     = mix_color_2fb(theme.ui.fg_dim, theme.ui.bg_dim),

					--DiagnosticVirtualTextHint  = diag_color(theme.diag.hint),
					--DiagnosticVirtualTextInfo  = diag_color(theme.diag.info),
					--DiagnosticVirtualTextWarn  = diag_color(theme.diag.warning),
					--DiagnosticVirtualTextError = diag_color(theme.diag.error),
				}
			end
		})
		require('kanagawa').load("wave")
	end


	-- VSCODE
	--'Mofiqul/vscode.nvim',
	--config = function()
	--	local c = require('vscode.colors').get_colors()
	--	require('vscode').setup({
	--		-- style = 'light'
	--		-- transparent = true,
	--		italic_comments = false,
	--		disable_nvimtree_bg = true,
	--		color_overrides = {
	--			vscLineNumber = '#FFFFFF',
	--		},
	--		group_overrides = {
	--			-- this supports the same val table as vim.api.nvim_set_hl
	--			-- use colors from this colorscheme by requiring vscode.colors!
	--			Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
	--		}
	--	})
	--	require('vscode').load()
	--end,
}
