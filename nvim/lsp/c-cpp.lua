return {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'h', 'hpp' },
  root_markers = {
    '.clangd',
    '.clang-format',
    '.clang-tidy',
    'CMakeLists.txt',
    '.git',
    '.editorconfig',
  },
}
