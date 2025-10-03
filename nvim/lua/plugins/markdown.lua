return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {
    completions = { lsp = { enabled = true } },
  },
  config = function(_, opts)
    require('render-markdown').setup(opts)
    vim.keymap.set('n', '<leader>p', '<CMD>RenderMarkdown toggle<CR>', { desc = 'Toggle Markdown [P]review' })
  end,
}
