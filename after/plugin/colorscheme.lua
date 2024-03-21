vim.o.background = 'dark'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- style = 'light'
--    transparent = true,
    italic_comments = false,
    disable_nvimtree_bg = true,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
require('vscode').load()

-- also: term, cterm, ctermfg, ctermbg for terminal
vim.cmd('highlight LineNr gui=bold guifg=#808080 guibg=NONE')
vim.cmd('highlight LineNrAbove guifg=#505050 guibg=NONE')
vim.cmd('highlight LineNrBelow guifg=#505050 guibg=NONE')
vim.cmd('highlight EndOfBuffer guifg=#202020 guibg=NONE')
