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
    functions = {},
    keywords = {},
    loops = {},
    numbers = {},
    operators = {},
    punctuation = {},
    types = {},
    strings = {},
  },
  diagnostics = {
    errors = {},
    warnings = {},
    information = {},
    hints = {},
  },
  plugins = {
    cmp = true,
    context = true,
    gitsigns = true,
    lsp = true,
    telescope = true,
    treesitter = true,
  },
}

return base_configuration
