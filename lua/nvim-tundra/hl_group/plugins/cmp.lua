local M = {}

M.map = function(ss, opts)
  return {
    CmpItemAbbr = { fg = ss.fg.default }, -- Unmatched characters of each completion field.
    CmpItemAbbrDeprecated = { fg = ss.diagnostics.error, strikethrough = true }, -- Unmatched characters of each deprecated completion field.
    CmpItemAbbrMatch = { fg = ss.diagnostics.hint }, -- Matched characters of each completion field. Matched characters must form a substring of a field which share a starting position.
    CmpItemAbbrMatchFuzzy = { fg = ss.diagnostics.hint }, -- Fuzzy-matched characters of each completion field.
    CmpItemMenu = { link = 'Comment' }, -- The menu field's highlight group.

    -- Highlight groups for the kind of the field.
    CmpItemKindClass = { link = 'Type' },
    CmpItemKindConstant = { link = 'Constant' },
    CmpItemKindConstructor = { link = 'Function' },
    CmpItemKindDefault = { fg = ss.fg.statusline },
    CmpItemKindEnum = { link = 'Constant' },
    CmpItemKindEnumMember = { fg = ss.syntax.field },
    CmpItemKindEvent = { link = 'Constant' },
    CmpItemKindField = { fg = ss.syntax.field },
    CmpItemKindFunction = { link = 'Function' },
    CmpItemKindInterface = { link = 'Constant' },
    CmpItemKindKeyword = { link = 'Include' },
    CmpItemKindMethod = { link = 'Function' },
    CmpItemKindModule = { fg = ss.syntax.builtin.type },
    CmpItemKindOperator = { link = 'Operator' },
    -- CmpItemKindProperty = {},
    CmpItemKindReference = { link = 'Keyword' },
    CmpItemKindSnippet = { fg = ss.fg.statusline },
    CmpItemKindStruct = { link = 'Type' },
    CmpItemKindTypeParameter = { fg = ss.syntax.field },
    CmpItemKindUnit = { link = 'Constant' },
    CmpItemKindValue = { link = 'Keyword' },
    CmpItemKindVariable = { fg = ss.syntax.builtin.var },
  }
end

return M
