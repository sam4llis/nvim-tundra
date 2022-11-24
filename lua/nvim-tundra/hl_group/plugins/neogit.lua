local M = {}

M.map = function(ss, opts)
  return {
    NeogitDiffContextHighlight = { bg = ss.cp.gray._875 },

    NeogitDiffAdd = { fg = ss.cp.green._500, bg = ss.diff.add },
    NeogitDiffAddHighlight = { link = 'NeogitDiffAdd' },

    NeogitDiffDelete = { fg = ss.git.removed, bg = ss.diff.delete.bg },
    NeogitDiffDeleteHighlight = { link = 'NeogitDiffDelete' },

    NeogitHunkHeader = { link = 'diffLine' },
    NeogitHunkHeaderHighlight = { link = 'NeogitHunkHeader' },
  }
end

return M
