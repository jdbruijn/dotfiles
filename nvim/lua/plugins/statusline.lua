return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function(_, opts)
    require('lualine').setup(opts)
  end,
  opts = {
    sections = {
      -- Show the absolute path with tilde as the home directory.
      lualine_c = { { 'filename', path = 3 } },
    },
  },
}
