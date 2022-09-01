local M = {}

M.map = function(ss, opts)
  return {
    LspReferenceText = { bg = ss.bg.colorcolumn },
    LspReferenceRead = { bg = ss.bg.colorcolumn },
    LspReferenceWrite = { bg = ss.bg.colorcolumn },

    LspCodeLens = { fg = ss.syntax.comment }, -- Used to color the virtual text of the codelens.
    LspCodeLensSeparator = { fg = ss.bg.cursorline }, -- Used to color the separator between two or more code lenses.
    LspSignatureActiveParameter = { fg = ss.diagnostics.information }, -- Used to highlight the active parameter in the signature help.
  }
end

return M
