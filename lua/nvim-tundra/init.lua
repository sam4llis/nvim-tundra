local M = {}

-- Imports.
local biomes = require('nvim-tundra.biomes')

M.load = function()

  -- If the global variable `tundra_biome` is not set, then respect the user's background colour.
  if vim.g.tundra_biome == nil then
    vim.g.tundra_biome = vim.tbl_get(biomes, vim.opt.background:get())
  end

  local stylesheet = require('nvim-tundra.stylesheet.' .. vim.g.tundra_biome)
  local opts = {}

  local highlights = {
    editor = require('nvim-tundra.hl_group.editor').map(stylesheet, opts),
    syntax = require('nvim-tundra.hl_group.syntax').map(stylesheet, opts),
  }
  for k, v in pairs(highlights.editor) do
    vim.api.nvim_set_hl(0, k, v)
  end
  for k, v in pairs(highlights.syntax) do
    vim.api.nvim_set_hl(0, k, v)
  end
end

return M
