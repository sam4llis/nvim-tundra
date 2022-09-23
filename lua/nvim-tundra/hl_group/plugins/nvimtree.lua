local M = {}

M.map = function(ss, opts)
  return {
    NvimTreeNormal = { fg = ss.filetree.filename.normal, bg = ss.filetree.bg },
    NvimTreeVertSplit = ss.filetree.border,
  }
end

return M
