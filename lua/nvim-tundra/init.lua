local M = {}
local bg = vim.opt.background:get()
local highlights = require('nvim-tundra.create_' .. bg ..'_hl')

M.setup = function ()
  M.set_highlights(highlights.common)
  M.set_highlights(highlights.syntax)

  for _, plugin in pairs(highlights.plugins) do
    M.set_highlights(plugin)
  end

  for _, language in pairs(highlights.languages) do
    M.set_highlights(language)
  end
end

M.set_highlights = function (highlights)
  for k, v in pairs(highlights) do
    vim.api.nvim_set_hl(0, k, v)
  end
end

return M
