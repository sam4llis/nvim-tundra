local M = {}

M.map = function(ss, opts)
  return {
    TreesitterContext = { bg = ss.bg.cursorline },
  }
end

return M
