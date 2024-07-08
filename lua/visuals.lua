vim.o.guifont = "JetBrains Mono NL:h10"

--vim.g.neovide_transparency = 0.95
vim.g.neovide_floating_blur = 4.8
vim.g.neovide_scroll_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.3

vim.o.background = 'dark'

-- also: term, cterm, ctermfg, ctermbg for terminal
vim.cmd('highlight LineNr gui=bold guifg=#808080 guibg=NONE')
vim.cmd('highlight LineNrAbove guifg=#505050 guibg=NONE')
vim.cmd('highlight LineNrBelow guifg=#505050 guibg=NONE')
vim.cmd('highlight EndOfBuffer guifg=#202020 guibg=NONE')
