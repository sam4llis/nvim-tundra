local M = {}

M.map = function(ss, opts)
  return {
    NvimTreeNormal = { fg = ss.filetree.fg, bg = ss.filetree.bg },
    NvimTreeVertSplit = ss.filetree.border,
  }
end

return M
