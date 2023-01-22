local M = {}

M.map = function(ss, opts)
  return {
    NvimTreeNormal = {
      fg = ss.fg.normal,
      bg = (opts.transparent_background and ss.bg.transparent)
          or (opts.sidebars.enabled and vim.tbl_contains(opts.sidebars.filetypes, 'NvimTree'))
          and (opts.sidebars.color or ss.bg.sidebar)
          or ss.bg.normal,
    },
    NvimTreeVertSplit = {
      fg = ss.fg.conceal,
      bg = (opts.transparent_background and ss.bg.transparent)
          or (opts.sidebars.enabled and vim.tbl_contains(opts.sidebars.filetypes, 'NvimTree'))
          and (opts.sidebars.color or ss.bg.sidebar)
          or ss.bg.normal,
    },
  }
end

return M
