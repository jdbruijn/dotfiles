-- LSP, see https://neovim.io/doc/user/lsp.html for details.

vim.lsp.enable({
  'c-cpp',
  'go',
  'lua',
  'rust',
  'typescript',
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = '[G]o to [D]efinitions' })
    vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = '[G]o to [R]eferences' })
    vim.keymap.set('n', 'gI', builtin.lsp_implementations, { desc = '[G]o to [I]mplementations' })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })
    vim.keymap.set('n', 'H', vim.lsp.buf.hover, { desc = '[H]over documentation' })

    vim.keymap.set('n', '<leader>D', builtin.lsp_type_definitions, { desc = 'Go to type [D]efinition' })
    vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = 'Show [D]ocument [S]ymbols' })
    vim.keymap.set('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols, { desc = 'Show [W]orkspace [S]ymbols' })
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = '[R]ename' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
    vim.keymap.set('n', '<leader>sh', vim.lsp.buf.signature_help, { desc = '[S]ignature [H]elp' })
  end,
})
