local base_configuration = {
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
    types = {},
    strings = {},
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
