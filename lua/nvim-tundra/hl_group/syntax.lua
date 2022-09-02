local M = {}

M.map = function(ss, opts)
  return {
    Boolean = vim.tbl_extend('force', { fg = ss.syntax.number }, opts.syntax.booleans),
    Character = { link = 'String' },
    Comment = vim.tbl_extend('force', { fg = ss.syntax.comment }, opts.syntax.comments),
    Conditional = vim.tbl_extend('force', { fg = ss.syntax.conditional }, opts.syntax.conditionals),
    Constant = vim.tbl_extend('force', { fg = ss.syntax.constant }, opts.syntax.constants),
    Debug = { link = 'Special' },
    Define = { link = 'PreProc' },
    Delimiter = vim.tbl_extend('force', { fg = ss.syntax.punctuation }, opts.syntax.punctuation),
    Error = { fg = ss.diagnostics.error },
    Exception = { link = 'Keyword' },
    Float = { link = 'Number' },
    Function = vim.tbl_extend('force', { fg = ss.syntax.func }, opts.syntax.functions),
    Identifier = { fg = ss.syntax.identifer },
    Include = { link = 'PreProc' },
    Keyword = vim.tbl_extend('force', { fg = ss.syntax.keyword }, opts.syntax.keywords),
    Label = { link = 'Function' },
    Macro = { link = 'PreProc' },
    Number = vim.tbl_extend('force', { fg = ss.syntax.number }, opts.syntax.numbers),
    Operator = vim.tbl_extend('force', { fg = ss.syntax.operator }, opts.syntax.operators),
    PreCondit = { link = 'PreProc' },
    Preproc = { fg = ss.syntax.preprocessor },
    Repeat = vim.tbl_extend('force', { fg = ss.syntax.conditional }, opts.syntax.loops),
    Special = { fg = ss.syntax.func },
    SpecialChar = { link = 'Special' },
    SpecialComment = { link = 'Special' },
    Statement = { fg = ss.syntax.keyword },
    StorageClass = { link = 'Type' },
    String = vim.tbl_extend('force', { fg = ss.syntax.string }, opts.syntax.strings),
    Structure = { link = 'Type' },
    Tag = { link = 'Special' },
    Todo = { fg = ss.diagnostics.information, bold = true },
    Type = vim.tbl_extend('force', { fg = ss.syntax.type }, opts.syntax.types),
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
