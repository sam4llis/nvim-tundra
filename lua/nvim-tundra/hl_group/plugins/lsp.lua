local M = {}

M.map = function(ss, opts)
  return {
    LspReferenceText = { bg = ss.diagnostics.reference },
    LspReferenceRead = { bg = ss.diagnostics.reference },
    LspReferenceWrite = { bg = ss.diagnostics.reference },

    LspCodeLens = { fg = ss.syntax.comment }, -- Used to color the virtual text of the codelens.
    LspCodeLensSeparator = { fg = ss.bg.cursorline }, -- Used to color the separator between two or more code lenses.
    LspSignatureActiveParameter = { fg = ss.diagnostics.information }, -- Used to highlight the active parameter in the signature help.
    LspInlayHint = { fg = ss.syntax.comment }, -- Used for highlighting inlay hints.

    DiagnosticError = vim.tbl_extend('force', {
      fg = ss.diagnostics.error,
      bold = true,
    }, opts.diagnostics.errors),

    DiagnosticWarn = vim.tbl_extend('force', {
      fg = ss.diagnostics.warning,
      bold = true,
    }, opts.diagnostics.warnings),

    DiagnosticInfo = vim.tbl_extend('force', {
      fg = ss.diagnostics.information,
      bold = true,
    }, opts.diagnostics.information),

    DiagnosticHint = vim.tbl_extend('force', {
      fg = ss.diagnostics.hint,
      bold = true,
    }, opts.diagnostics.hints),
  }
end

return M
