return {
  'acksld/nvim-neoclip.lua',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('neoclip').setup()

    vim.keymap.set('n', '<leader>sp', ':Telescope neoclip<cr>', { desc = '[S]earch clipboard to [P]aste' })
  end,
}
