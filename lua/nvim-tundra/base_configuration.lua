local base_configuration = {
  transparent_background = false,
  dim_inactive_windows = {
    enabled = false,
    color = nil,
  },
  sidebars = {
    enabled = false,
    color = nil,
    filetypes = {
      'help',
      'dbui',
      'fugitive',
      'gitcommit',
      'netrw',
      'NvimTree',
      'qf',
      'terminal',
    },
  },
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
    telescope = false,
    nvimtree = false,
    cmp = false,
    context = false,
    dbui = false,
    gitsigns = false,
    neogit = false,
  },
  overwrite = {
    colors = {},
    highlights = {},
  },
}

return base_configuration
