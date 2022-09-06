local base_configuration = {
  transparent_background = false,
  editor = {
    search = {},
    substitute = {},
  },
  syntax = {
    booleans = {},
    comments = {},
    conditionals = {},
    constants = {},
    fields = {},
    functions = {},
    keywords = {},
    loops = {},
    numbers = {},
    operators = {},
    punctuation = {},
    strings = {},
    types = {},
  },
  diagnostics = {
    errors = {},
    warnings = {},
    information = {},
    hints = {},
  },
  plugins = {
    lsp = true,
    treesitter = true,
    cmp = false,
    context = false,
    gitsigns = false,
    telescope = false,
  },
  overwrite = {
    colors = {},
  },
}

return base_configuration
