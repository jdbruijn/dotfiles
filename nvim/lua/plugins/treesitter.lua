return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
    vim.treesitter.language.register('markdown', 'mdx')
  end,
  opts = {
    auto_install = true,
    ensure_installed = {
      'bash',
      'c',
      'cmake',
      'cpp',
      'dockerfile',
      'editorconfig',
      'go',
      'html',
      'javascript',
      'lua',
      'markdown_inline',
      'markdown',
      'rust',
      'toml',
      'typescript',
      'vue',
      'yaml',
    },
    highlight = {
      additional_vim_regex_highlighting = false,
      enable = true,
    },
    indent = { enable = true },
    sync = false,
  },
}
