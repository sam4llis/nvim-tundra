local M = {}

M.map = function(ss, opts)
  return {
    NotificationInfo = { fg = ss.diagnostics.information, bg = ss.bg.floating },
    NotificationWarning = { fg = ss.diagnostics.warning, bg = ss.bg.floating },
    NotificationError = { fg = ss.diagnostics.error, bg = ss.bg.floating },
  }
end

return M
