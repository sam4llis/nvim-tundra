local M = {}

-- Imports.
local biomes = require('nvim-tundra.biomes')

-- A function to toggle the `dim_inactive_windows.enabled` configuration option
-- from a users Neovim configuration. Can be called using the Tundra command
-- line interface via `:Tundra toggle_dim`.
M.toggle_dim = function(opts)
  require('nvim-tundra').setup({
    dim_inactive_windows = {
      enabled = not vim.tbl_get(vim.g.tundra_opts, 'dim_inactive_windows', 'enabled')
    },
  })
end

M.toggle_transparency = function(opts)
  require('nvim-tundra').setup({
    transparent_background = not vim.tbl_get(vim.g.tundra_opts, 'transparent_background')
  })
end

M.toggle_sidebars = function(opts)
  require('nvim-tundra').setup({
    sidebars = {
      enabled = not vim.tbl_get(vim.g.tundra_opts, 'sidebars', 'enabled')
    }
  })
end

vim.api.nvim_create_user_command('Tundra',
  function(opts)
    M[opts.args](opts)
    vim.cmd('colorscheme tundra')
  end,
  {
    nargs = 1,
    complete = function(line)
      return vim.tbl_filter(
        function(value)
          return vim.startswith(value, line)
        end,
        vim.tbl_values(vim.tbl_extend('force', {}, { 'toggle_dim', 'toggle_transparency', 'toggle_sidebars' }))
      )
    end,
  }
)

return M
