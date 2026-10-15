local autocmd = vim.api.nvim_create_autocmd
local autogrp = vim.api.nvim_create_augroup

local spellcheck_group = autogrp('SpellCheck', {})

autocmd({ 'BufEnter' }, {
  group = spellcheck_group,
  pattern = { '*' },
  callback = function()
    local filetype = vim.bo.filetype

    if
      filetype == 'markdown'
      or filetype == 'mdx'
      or filetype == 'latex'
      or filetype == 'tex'
      or filetype == 'gitcommit'
    then
      vim.wo.spell = true
      vim.bo.spelllang = 'en,en_gb'
    else
      vim.wo.spell = false
      vim.bo.spelllang = nil
    end
  end,
  desc = 'Activate spellcheck only for specific file types',
})
