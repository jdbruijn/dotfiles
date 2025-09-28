return {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = {
    'javascript.jsx',
    'javascript',
    'typescript.tsx',
    'typescript',
  },
  root_markers = {
    'tsconfig.json',
    'package.json',
    '.git',
    '.editorconfig',
  },
}
