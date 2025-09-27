return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({ async = true, lsp_fallback = true })
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    format_on_save = { timeout_ms = 500 },
    formatters_by_ft = {
      c = { 'clang-format' },
      cpp = { 'clang-format' },
      go = { 'gofmt' },
      html = { 'prettierd' },
      javascript = { 'prettierd' },
      json = { 'prettierd' },
      lua = { 'stylua' },
      markdown = { 'prettierd' },
      rust = { 'rustfmt' },
      typescript = { 'prettierd' },
      vue = { 'prettierd' },
      yaml = { 'prettierd' },
    },
  },
}
