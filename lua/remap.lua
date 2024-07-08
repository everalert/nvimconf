vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader><leader>', ':', { noremap = true })
vim.keymap.set('v', '<leader><leader>', ':', { noremap = true })

vim.keymap.set('n', "<leader>'", 'm', { noremap = true })

-- window/panel switching
vim.keymap.set('n', '<leader><Left>', '<C-w><Left>', { noremap = true })
vim.keymap.set('n', '<leader><Right>', '<C-w><Right>', { noremap = true })
vim.keymap.set('n', '<leader><Up>', '<C-w><Up>', { noremap = true })
vim.keymap.set('n', '<leader><Down>', '<C-w><Down>', { noremap = true })

-- move lines
vim.keymap.set('v', '<S-Up>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '<S-Down>', ":m '>+1<CR>gv=gv")

-- netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- OS copy/paste
vim.keymap.set('v', '<C-c>', '"*y', { noremap = true })
vim.keymap.set('v', '<C-v>', '"*p', { noremap = true })

-- Ctrl-Delete/Backspace
vim.keymap.set('i', '<C-Del>', 'a<Left><C-o>dw', { noremap = true })
vim.keymap.set('i', '<C-BS>', '<C-w>', { noremap = true })

-- config file edit/reload
vim.keymap.set('n', '<leader>se', ':edit $MYVIMRC<CR>', { noremap = true })
vim.keymap.set('n', '<leader>sv', ':source $MYVIMRC<CR>', { noremap = true })
