local M = {}

M.map = function(ss, opts)
  return {
    NvimTreeNormal = { fg = ss.fg.normal, bg = ss.bg.dimmed },
    NvimTreeVertSplit = { fg = ss.bg.dimmed, bg = ss.bg.dimmed },
  }
end

return M
