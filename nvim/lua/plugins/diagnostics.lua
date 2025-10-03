return {
  'folke/trouble.nvim',
  cmd = 'Trouble',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  config = function()
    require('trouble').setup()

    vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Toggle diagnostics' })
    vim.keymap.set(
      'n',
      '<leader>xX',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      { desc = 'Toggle buffer diagnostics' }
    )
    vim.keymap.set(
      'n',
      '<leader>cs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      { desc = 'Toggle diagnostics [S]ymbols' }
    )
    vim.keymap.set(
      'n',
      '<leader>cs',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      { desc = 'Toggle diagnostics LSP definitions / references' }
    )
    vim.keymap.set(
      'n',
      '<leader>xL',
      '<cmd>Trouble loclist toggle<cr>',
      { desc = 'Toggle diagnostics [L]ocation list' }
    )
    vim.keymap.set('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', { desc = 'Toggle diagnostics [Q]uickfix list' })
  end,
}
