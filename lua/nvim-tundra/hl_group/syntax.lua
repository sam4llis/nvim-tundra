local M = {}

M.map = function(ss, opts)
  return {
    Boolean = { link = 'Number' },
    Character = { link = 'String' },
    Comment  = { fg = ss.syntax.comment },
    Conditional = { fg = ss.syntax.conditional },
    Constant = { fg = ss.syntax.constant },
    Debug = { link = 'Special' },
    Define = { link = 'PreProc' },
    Delimiter = { link = 'Special' },
    Error = { fg = ss.diagnostics.error },
    Exception = { link = 'Keyword' },
    Float = { link = 'Number' },
    Function = { fg = ss.syntax.func },
    Identifier = { fg = ss.syntax.identifer },
    Include = { link = 'PreProc' },
    Keyword = { fg = ss.syntax.keyword },
    Label = { link = 'Function' },
    Macro = { link = 'PreProc' },
    Number = { fg = ss.syntax.number },
    Operator = { fg = ss.syntax.operator, bold = true },
    PreCondit = { link = 'PreProc' },
    Preproc = { fg = ss.syntax.preprocessor },
    Repeat = { link = 'Conditional' },
    Special = { fg = ss.syntax.func },
    SpecialChar = { link = 'Special' },
    SpecialComment = { link = 'Special' },
    Statement = { fg = ss.syntax.keyword },
    StorageClass = { link = 'Type' },
    String = { fg = ss.syntax.string },
    Structure = { link = 'Type' },
    Tag = { link = 'Special' },
    Todo = { fg = ss.diagnostics.information, bold = true },
    Type = { fg = ss.syntax.type },
    Typedef = { link = 'Type' },

    qfLineNr = { link = 'lineNr' },
    qfFileName = { link = 'Directory' },

    -- Diff highlights.
    diffAdded = { fg = ss.git.added }, -- Added lines ('^+.*' | '^>.*').
    diffRemoved = { fg = ss.git.removed }, -- Removed lines ('^-.*' | '^<.*').
    diffChanged = { fg = ss.git.changed }, -- Changed lines ('^! .*').
    diffOldFile = { fg = ss.diagnostics.warning }, -- Old file that is being diff against.
    diffNewFile = { fg = ss.diagnostics.hint }, -- New file that is being compared to the old file.
    diffFile = { fg = ss.diagnostics.information }, -- The filename of the diff ('diff --git a/readme.md b/readme.md').
    diffLine = { fg = ss.syntax.builtin.const }, -- Line information ('@@ -169,6 +169,9 @@').
    diffIndexLine = { fg = ss.syntax.preprocessor }, -- Index line of diff ('index bf3763d..94f0f62 100644').
  }
end

return M
