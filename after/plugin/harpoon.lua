local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-n>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-e>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-o>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(harpoon:list():length()) end)

--vim.keymap.set("n", "<C-Down>", ui.nav_next)
--vim.keymap.set("n", "<C-Up>", ui.nav_prev)
