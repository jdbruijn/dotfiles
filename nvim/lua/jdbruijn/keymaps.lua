-- Key mapping, see https://neovim.io/doc/user/map.html for details.

-- Set <space> as the leader key.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save the current file.
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = '[W]rite (save) file' })
