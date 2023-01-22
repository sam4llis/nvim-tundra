package.loaded['nvim-tundra.palette.arctic'] = nil
local cp = require('nvim-tundra.palette.arctic')
local stylesheet = {}

stylesheet.cp = cp

stylesheet.fg = {
  normal = cp.gray._50, -- Normal (default) window foreground.
  conceal = cp.gray._500, -- Placeholder conceal characters
  lnumber = cp.gray._600, -- Line number foreground.
  statusline = cp.gray._200, -- Statusline text.
  whitespace = cp.gray._700, -- Whitespace characters.
}

stylesheet.bg = {
  normal = cp.gray._900, -- Normal (default) window background.
  floating = cp.gray._1000, -- Floating window and statusline background.
  colorcolumn = cp.gray._800, -- Colorcolumn background.
  cursorline = cp.gray._800, -- Cursorline background.
  cursor = cp.white, -- Cursor background.
  visual = cp.gray._700, -- Visual selection background.
  transparent = cp.transparent,
  dimmed = cp.gray._950, -- Default background if `dim_inactive_windows` is set.
  sidebar = cp.gray._925,
}

stylesheet.syntax = {
  comment = cp.gray._500, -- Comments.
  conditional = cp.red._400, -- Conditional keywords, e.g., `if`, `when`.
  constant = cp.orange._500, -- Constants, e.g., upper-case variables in Python.
  field = cp.indigo._400, -- Object and struct fields.
  func = cp.sky._500, -- Function definitions.
  identifier = cp.red._400, -- Identifiers.
  keyword = cp.red._500, -- Keywords.
  number = cp.orange._500, -- Numbers and floats.
  operator = cp.red._400, -- Operators, e.g., `is`, `not`.
  preprocessor = cp.indigo._400, -- Preprocessor #if, #else, etc.
  punctuation = cp.gray._400, -- Any punctuation, e.g., brackets and commas.
  regex = cp.red._500, -- Regular expressions.
  string = cp.green._500, -- Strings.
  type = cp.red._400, -- Type (and class) definitions and annotations.
  variable = cp.gray._200, -- Variables.
}

stylesheet.syntax.builtin = {
  const = cp.orange._500, -- Built-in constants, e.g., `nil` in Lua.
  func  = cp.orange._500, -- Built-in functions, e.g., `print` in Lua.
  type  = cp.red._500, -- Built-in types, e.g., `i32` in Rust.
  var   = cp.orange._500, -- Language-defined variables, e.g., `self` in Python.
}

stylesheet.diagnostics = {
  error = cp.red._500,
  warning = cp.orange._500,
  information = cp.indigo._500,
  hint = cp.green._500,
  reference = cp.gray._750,
}

stylesheet.diff = {
  add = cp.green._900,
  change = cp.indigo._900,
  delete = {
    fg = cp.red._800,
    bg = cp.red._900,
  },
  text = cp.indigo._800,
}

stylesheet.git = {
  added = cp.green._600,
  changed = cp.orange._500,
  removed = cp.red._500,
}

return stylesheet
