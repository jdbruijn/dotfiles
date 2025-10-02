return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.git',
    '.editorconfig',
  },
  settings = { Lua = { diagnostics = { globals = { 'vim' } } } },
}
