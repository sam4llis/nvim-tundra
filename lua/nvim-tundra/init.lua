local M = {}

-- Imports.
local base_configuration = require('nvim-tundra.base_configuration')
local biomes = require('nvim-tundra.biomes')

M.setup = function(user_opts)
  vim.g.tundra_opts = vim.tbl_deep_extend('force', vim.g.tundra_opts or base_configuration, user_opts or {})
  -- NOTE: This is a case where the user configuration should not be forced. If
  -- the user configuration has `sidebars.filetypes` as an empty table, use the
  -- base configuration `sidebars.filetypes` table. Otherwise, add the user
  -- sidebar preferences to `vim.g.tundra_opts.sidebars.filetypes`.
  if vim.tbl_isempty(vim.g.tundra_opts.sidebars.filetypes) then
    vim.g.tundra_opts.sidebars.filetypes = vim.tbl_deep_extend(
      'keep',
      vim.tbl_get(base_configuration, 'sidebars', 'filetypes'),
      vim.tbl_get(vim.g.tundra_opts, 'sidebars', 'filetypes')
    )
  else
    vim.g.tundra_opts.sidebars.filetypes = base_configuration.sidebars.filetypes
  end
end

M.load = function()
  -- Call `setup` to instantiate global `tundra_opts` table. If the table has
  -- not been previously assigned (e.g., the user has not invoked the `setup`
  -- function in their personal configuration) then use the base configuration,
  -- and assign the base configuration to the global `tundra_opts` table.
  M.setup(vim.g.tundra_opts or base_configuration)
  local opts = vim.g.tundra_opts

  -- If the global variable `tundra_biome` is not set, then respect the user's background colour.
  if vim.g.tundra_biome == nil then
    vim.g.tundra_biome = vim.tbl_get(biomes, vim.opt.background:get())
  end

  -- Fetch the correct stylesheet using the defined global variable.
  local stylesheet = require('nvim-tundra.stylesheet.' .. vim.g.tundra_biome)

  local base_highlights = {
    syntax = require('nvim-tundra.hl_group.syntax').map(stylesheet, opts),
    editor = require('nvim-tundra.hl_group.editor').map(stylesheet, opts),
  }

  -- Load sidebar autocmds if they are enabled, and transparent background is not enabled.
  if not opts.transparent_background then
    if opts.sidebars.enabled then
      require('nvim-tundra.autocmds.sidebars')
    end
  end

  for _, hl in pairs(base_highlights) do
    M.set_hl(hl)
  end

  for plugin, enabled in pairs(opts.plugins) do
    if enabled then
      local hl_group = require('nvim-tundra.hl_group.plugins.' .. plugin).map(stylesheet, opts)
      M.set_hl(hl_group)
    end
  end

end

M.set_hl = function(hl_group)
  for k, v in pairs(hl_group or {}) do
    local overwrite = vim.tbl_get(vim.g.tundra_opts or {}, 'overwrite', 'highlights', k) or {}
    vim.api.nvim_set_hl(0, k, vim.tbl_extend('force', v, overwrite))
  end
end

return M
