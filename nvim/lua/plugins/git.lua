return {
  { 'lewis6991/gitsigns.nvim' },
  {
    'ruifm/gitlinker.nvim',
    config = function()
      require('gitlinker').setup({
        callbacks = {
          ['forgejo.team.internal'] = require('gitlinker.hosts').get_gitea_type_url,
        },
      })
    end,
  },
}
