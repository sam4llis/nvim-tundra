local M = {}

-- Imports.
local biomes = require('nvim-tundra.biomes')

M.load = function()
  -- If the global variable `tundra_biome` is not set, then respect the user's
  -- background colour.
  if vim.g.tundra_biome == nil then
    vim.g.tundra_biome = vim.tbl_get(biomes, vim.opt.background:get())
  end
end

return M
