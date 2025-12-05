return {
  'mfussenegger/nvim-lint',
  event = { 'BufWritePre', 'BufReadPost', 'InsertLeave' },
  config = function()
    vim.env.ESLINT_D_PPID = vim.fn.getpid()
    require('lint').linters_by_ft = {
      cpp = { 'clangtidy' },
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
    }

    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })
  end,
}
