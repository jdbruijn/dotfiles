return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
  },
  event = { 'InsertEnter', 'CmdLineEnter' },
  config = function()
    local cmp = require('cmp')

    cmp.setup({
      completion = { completeopt = 'menu,menuone,noinsert' },
      expand = function(args)
        vim.snippet.expand(args.body)
      end,
      mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
      }),
      sources = {
        { name = 'buffer' },
        { name = 'nvim_lsp' },
        { name = 'path' },
      },
    })

    cmp.setup.cmdline('/', {
      sources = { { name = 'buffer' } },
      mapping = cmp.mapping.preset.cmdline(),
    })

    cmp.setup.cmdline(':', {
      sources = { { name = 'cmdline' } },
      mapping = cmp.mapping.preset.cmdline(),
    })
  end,
}
