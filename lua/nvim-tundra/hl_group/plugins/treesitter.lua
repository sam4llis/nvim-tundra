local M = {}

M.map = function(ss, opts)

  if vim.version().minor < 8 then
    vim.notify_once(
      '[nvim-tundra] nvim-treesitter integration requires Neovim 0.8 or higher. Use nvim-tundra v0.1.0 or disable the nvim-treesitter integration in your `setup()` table to avoid this message.'
      , vim.log.levels.WARN
    )
    return
  end

  return {
    -- Punctuation.
    ['@punct.delimiter'] = { link = 'Delimiter' },
    ['@punct.bracket'] = { link = 'Delimiter' },
    ['@punct.special'] = { link = 'Delimiter' },

    -- Literals.
    ['@string'] = { link = 'String' },
    ['@string.regex'] = vim.tbl_extend('force', { fg = ss.syntax.regex }, opts.syntax.strings),
    ['@string.escape'] = vim.tbl_extend('force', { fg = ss.syntax.regex }, opts.syntax.strings),
    ['@string.special'] = { link = 'String' },

    ['@character'] = { link = 'Character' },
    ['@character.special'] = { link = 'SpecialChar' },

    ['@boolean'] = { link = 'Boolean' },
    ['@number'] = { link = 'Number' },
    ['@float'] = { link = 'Float' },

    -- Functions.
    ['@function'] = { link = 'Function' },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = vim.tbl_extend('force', { fg = ss.syntax.builtin.func }, opts.syntax.functions),
    ['@function.macro'] = { fg = ss.syntax.builtin.func },

    ['@method'] = { link = 'Function' },
    ['@method.call'] = { link = 'Function' },

    ['@constructor'] = { link = 'Function' },
    ['@parameter'] = { fg = ss.syntax.field },
    ['@parameter.reference'] = { link = '@parameter' },

    -- Keywords.
    ['@keyword'] = { link = 'Keyword' },
    ['@keyword.function'] = { link = 'Keyword' },
    ['@keyword.operator'] = { link = 'Operator' },
    ['@keyword.return'] = { link = 'Keyword' },

    ['@conditional'] = { link = 'Conditional' },
    ['@repeat'] = { link = 'Repeat' },
    ['@debug'] = { link = 'Debug' },
    ['@label'] = { link = 'Label' },
    ['@include'] = { link = 'Include' },
    ['@exception'] = { link = 'Exception' },

    -- Types.
    ['@type'] = { link = 'Type' },
    ['@type.builtin'] = vim.tbl_extend('force', { fg = ss.syntax.builtin.type }, opts.syntax.types),
    ['@type.qualifier'] = { link = 'Type' },
    ['@type.definition'] = { link = 'Type' },

    ['@storageclass'] = { link = 'StorageClass' },
    ['@attribute'] = { link = 'Constant' },
    ['@field'] = vim.tbl_extend('force', { fg = ss.syntax.field }, opts.syntax.fields),
    ['@property'] = { link = '@field' },

    -- Identifiers.
    ['@variable'] = { fg = ss.syntax.variable },
    ['@variable.builtin'] = { fg = ss.syntax.builtin.var },

    ['@constant'] = { link = 'Constant' },
    ['@const.builtin'] = vim.tbl_extend('force', { fg = ss.syntax.builtin.const }, opts.syntax.constants),
    ['@const.macro'] = { link = 'Macro' },

    ['@namespace'] = { fg = ss.syntax.builtin.type },
    ['@symbol'] = { link = 'Special' },

    -- Text.
    ['@text'] = { fg = ss.fg.normal },
    ['@text.strong'] = { fg = ss.diagnostics.error },
    ['@text.emphasis'] = { fg = ss.diagnostics.information },
    ['@text.underline'] = { underline = true },
    ['@text.strike'] = { strikethrough = true },
    ['@text.title'] = { link = 'Keyword' },
    ['@text.literal'] = { link = 'String' },
    ['@text.uri'] = { fg = ss.syntax.identifier },
    ['@text.math'] = { link = 'Special' },
    ['@text.environment'] = { link = 'Macro' },
    ['@text.environment.name'] = { link = 'Type' },
    ['@text.reference'] = { link = 'Constant' },

    ['@text.danger'] = { fg = ss.diagnostics.error, bold = true },
    ['@text.note'] = { fg = ss.diagnostics.information, bold = true },
    ['@text.todo'] = { link = 'Todo' },
    ['@text.warning'] = { fg = ss.diagnostics.warning, bold = true },

    -- Tags.
    ['@tag'] = { fg = ss.syntax.keyword },
    ['@tag.attribute'] = { link = '@parameter' },
    ['@tag.delimiter'] = { link = 'Comment' },

    -- Miscellaneous.
    ['@comment'] = { link = 'Comment' },
    ['@define'] = { link = 'Preproc' },
    ['@error'] = { link = 'Error' },
    ['@operator'] = { link = 'Operator' },
    ['@preproc'] = { link = 'Preproc' },
  }
end

return M
