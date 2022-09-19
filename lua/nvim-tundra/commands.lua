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

-- A function to pick the theme used by nvim-tundra. The argument must equal a
-- key in the `biomes` table (e.g., 'light') or a value in the `biomes` table
-- (e.g., 'alpine') to work. Can be called using the Tundra command line
-- interface via `:Tundra {arctic,dark,alpine,light}`.
M.biome = function(opts)
  if not (vim.tbl_contains(vim.tbl_values(biomes), opts.args) or vim.tbl_contains(vim.tbl_keys(biomes), opts.args)) then
    vim.api.nvim_err_writeln('[nvim-tundra] Invalid biome name')
    return
  end

  -- If the user specifies `light` or `dark` as the argument then convert it
  -- to its respective biome name.
  local biome = vim.tbl_get(biomes, opts.args)
  if biome then
    vim.g.tundra_biome = biome
  else
    vim.g.tundra_biome = opts.args
  end

end

M.arctic = function(opts)
  M.biome(opts)
end

M.alpine = function(opts)
  M.biome(opts)
end

M.dark = function(opts)
  M.biome(opts)
end

M.light = function(opts)
  M.biome(opts)
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
        vim.tbl_values(vim.tbl_extend('force', biomes, { 'light', 'dark', 'toggle_dim', 'toggle_transparency' }))
      )
    end,
  }
)

return M
