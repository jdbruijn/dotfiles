-- Key mapping, see https://neovim.io/doc/user/map.html for details.

-- Set <space> as the leader key.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save the current file.
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = '[W]rite (save) file' })

-- Yank to the system clipboard.
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = '[Y]ank line to system clipboard' })
vim.keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank to system clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank to system clipboard' })
