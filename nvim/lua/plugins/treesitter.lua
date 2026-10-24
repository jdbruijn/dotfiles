return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = false,
    config = function()
      local treesitter = require('nvim-treesitter')

      treesitter.install({
        'bash',
        'c',
        'cmake',
        'cpp',
        'dockerfile',
        'editorconfig',
        'go',
        'html',
        'javascript',
        'lua',
        'markdown_inline',
        'markdown',
        'rust',
        'toml',
        'typescript',
        'vue',
        'yaml',
      })
      vim.treesitter.language.register('markdown', 'mdx')

      local function start(buffer, language)
        if not vim.treesitter.language.add(language) then
          vim.notify('Cannot load treesitter parser for language ' .. language, vim.log.levels.WARN)
          return
        end

        vim.treesitter.start(buffer, language)
        if vim.treesitter.query.get(language, 'indents') then
          vim.bo[buffer].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { '*' },
        callback = function(args)
          local language = vim.treesitter.language.get_lang(args.match)
          if not language then
            return
          end

          if vim.list_contains(treesitter.get_installed(), language) then
            start(args.buf, language)
          elseif vim.list_contains(treesitter.get_available(), language) then
            treesitter.install(language):await(vim.schedule_wrap(function()
              if vim.api.nvim_buf_is_valid(args.buf) then
                start(args.buf, language)
              end
            end))
          end
        end,
      })
    end,
  },
  { 'nvim-treesitter/nvim-treesitter-context' },
}
