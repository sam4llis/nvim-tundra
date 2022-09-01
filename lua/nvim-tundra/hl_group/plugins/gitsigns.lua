local M = {}

M.map = function(ss, opts)
  return {
    GitSignsAdd = { fg = ss.git.added }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = ss.git.changed }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = ss.git.removed }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
