-- Diagnostic, see https://neovim.io/doc/user/diagnostic.html for details.

vim.diagnostic.config({
  virtual_text = {
    source = 'if_many',
  },
  underline = true,
  severity_sort = true,
  float = { source = true },
})
