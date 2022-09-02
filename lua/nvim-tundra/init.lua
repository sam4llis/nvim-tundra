local M = {}

-- Imports.
local base_configuration = require('nvim-tundra.base_configuration')
local biomes = require('nvim-tundra.biomes')

M.setup = function(user_opts)
  vim.g.tundra_opts = vim.tbl_deep_extend('force', base_configuration, user_opts or {})
end

M.load = function()
  local opts = vim.g.tundra_opts or base_configuration

  -- If the global variable `tundra_biome` is not set, then respect the user's background colour.
  if vim.g.tundra_biome == nil then
    vim.g.tundra_biome = vim.tbl_get(biomes, vim.opt.background:get())
  end

  -- Fetch the correct stylesheet using the defined global variable.
  local stylesheet = require('nvim-tundra.stylesheet.' .. vim.g.tundra_biome)

  for plugin, enabled in pairs(opts.plugins) do
    if enabled then
      local hl_group = require('nvim-tundra.hl_group.plugins.' .. plugin).map(stylesheet, opts)
      M.set_hl(hl_group)
    end
  end

  local base_highlights = {
    syntax = require('nvim-tundra.hl_group.syntax').map(stylesheet, opts),
    editor = require('nvim-tundra.hl_group.editor').map(stylesheet, opts),
  }

  for _, hl in pairs(base_highlights) do
    M.set_hl(hl)
  end
end

M.set_hl = function(hl_group)
  for k, v in pairs(hl_group) do
    vim.api.nvim_set_hl(0, k, v)
  end
end

return M
