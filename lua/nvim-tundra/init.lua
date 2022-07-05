local bg = vim.opt.background:get()
local cp = require('nvim-tundra.api.colors.' .. bg)

local M = {}
local highlights = { plugins = {}, languages = {} }

-- TODO: Add `nvim-modes` feature?
highlights.common = {

  -- Normal text highlights.
  Normal = { fg = cp.gray._50, bg = cp.gray._900 },                -- Normal text.
  NormalNC = { fg = cp.gray._50, bg = cp.gray._900 },              -- Normal text in non-current windows.
  NormalFloat = { fg = cp.gray._50, bg = cp.gray._1000 },          -- Normal text in floating windows.

  -- Fold and sign column highlights.
  Folded = { fg = cp.sky._300, bg = cp.gray._900 },                -- Line used for closed folds.
  FoldColumn = { fg = cp.sky._300, bg = cp.gray._900 },            -- The `foldcolumn`.
  SignColumn = { fg = cp.gray._200, bg = cp.gray._900 },           -- Column where signs are displayed.

  -- Cursor highlights.
  Cursor = { bg = cp.white },                                      -- Character under the cursor.
  lCursor = { bg = cp.white },                                     -- Character under the cursor when `language-mapping` is used.
  CursorIM = { bg = cp.white },                                    -- Like Cursor, but when used in IME mode.
  CursorColumn = { bg = cp.gray._1000 },                           -- Screen-column at the cursor, when `cursorcolumn` is set.
  CursorLine = { bg = cp.gray._800 },                              -- Screen-line at the cursor, when `cursorline` is set.

  -- Visual-mode highlights.
  Visual = { bg = cp.gray._800, },                                 -- Visual mode selection.
  VisualNOS = { bg = cp.gray._900, bold = true },                  -- Visual mode selection when Vim is 'Not Owning the Selection'.

  -- Line number highlights.
  LineNr = { fg = cp.gray._600 },                                  -- Line number for `:number` and `:#` commands, and when `number` or `relativenumber` option is set.
  CursorLineNr = { fg = cp.sky._300 },                             -- Like LineNr when `cursorline` is set and `cursorlineopt` contains `number` or is `both`, for the cursor line.

  -- Popup menu highlights.
  Pmenu = { fg = cp.red._300, bg = cp.gray._900 },                 -- Popup menu: Normal item.
  PmenuSel = { fg = cp.red._300, bg = cp.gray._900, bold = true }, -- Popup menu: Selected item.
  PmenuSbar = { bg = cp.red._300 },                                -- Popup menu: Scrollbar.
  PmenuThumb = { bg = cp.blue._300 },                              -- Popup menu: Thumb of the scrollbar.
  Question = { fg = cp.blue._300 },                                -- `hit-enter` prompt and yes/no questions.

  -- `showmode` highlights.
  ModeMsg = { fg = cp.gray._50, bold = true },                     -- `showmode' message (e.g., "-- INSERT --").
  MsgArea = { fg = cp.gray._50 },                                  -- Area for messages and cmdline.
  MsgSeparator = {},                                               -- Separator for scrolled messages, `mgsep` flag of `display`.

  -- Search/substitution highlights.
  Search = { bg = cp.gray._900, fg = cp.pink._300, bold = true },  -- Last search pattern highlighting. Also used for similar items that need to stand out.
  Substitute = { fg = cp.red._300, bg = cp.gray._900 },            -- :substitute replacement text highlighting.

  -- Statusline highlights.
  StatusLine = { fg = cp.gray._50, bg = cp.gray._900 },            -- Status line of the current window.
  StatusLineNC = { fg = cp.gray._300, bg = cp.gray._900 },         -- Status lines of not-current windows.

  -- Tabline highlights.
  TabLine = { fg = cp.gray._50, bg = cp.gray._900 },               -- Tab pages line, not active tab page label.
  TabLineFill = { bg = cp.gray._1000 },                            -- Tab pages line, where there are no labels.
  TabLineSel = { fg = cp.indigo._300, bg = cp.gray._900 },         -- Tab pages line, active tab page label.

  -- Spelling highlights.
  SpellBad = { sp = cp.red._300, underline = true },               -- Word that is not recognised by the spellchecker.
  SpellCap = { sp = cp.yellow._300, underline = true },            -- Word that should start with a capital.
  SpellLocal = { sp = cp.blue._300, underline = true },            -- Word that is recognised by the spellchecker as one that is used in another region.
  SpellRare = { sp = cp.green._300, underline = true },            -- Word that is recognised by the spellchecker as one that is hardly ever used.

  -- Warning/Error message highlights.
  WarningMsg = { fg = cp.yellow._300 },                            -- Warning messages on the command line.
  ErrorMsg = { fg = cp.red._300, bold = true, italic = true },     -- Error messages on the command line.

  -- Diff highlights.
  DiffAdd = { fg = cp.green._300 },                                -- Diff mode: Added line.
  DiffChange = { fg = cp.yellow._300 },                             -- Diff mode: Changed line.
  DiffDelete = { fg = cp.red._300 },                               -- Diff mode: Deleted line.
  DiffText = { fg = cp.sky._300 },                                 -- Diff mode: Changed text within a changed line.

  -- Miscellaneous highlights.
  ColorColumn = { bg = cp.gray._700 },                             -- Used for the columns set with `colorcolumn`.
  EndOfBuffer = { fg = cp.gray._900 },                             -- Filler lines (~) after the end of the buffer.
  MatchParen = { fg = cp.red._300, bold = true },                  -- Character under the cursor or just before it, if it is a paired bracket, and its match.
  WinSeparator = { fg = cp.gray._600 },                            -- Separators between window splits.
  FloatBorder = { fg = cp.red._300 },                              -- Floating window border.
  Directory = { fg = cp.sky._300 },                                -- Directory names (and other special names in listings).
  NonText = { fg = cp.gray._900 },                                 -- `@` at the end of the window, characters from `showbreak` and other characters that do not really exist in the text.
  SpecialKey = { fg = cp.gray._50 },                               -- Unprintable characters: Text displayed differently from what it really is. But not `listchars` whitespace.
  QuickFixLine = { fg = cp.indigo._300, bold = true },             -- Current `quickfix` item in the quickfix window. Combined with `CursorLine` when the cursor is there.
  WhiteSpace = { fg = cp.indigo._300 },                            -- `nbsp`, `space`, `tab`, `multispace`, `lead`, and `trail` in `listchars`.
  WildMenu  = { bg = cp.indigo._300 },                             -- Current match in `wildmenu` completion.

}

  -- diffAdded = { fg = cp.green._300 },
  -- diffRemoved = { fg = cp.red._300 }, -- TODO:
  -- diffChanged = { fg = cp.amber._300 },
  -- diffOldFile = { fg = cp.orange._300 },
  -- diffNewFile = { fg = cp.red._300 },
  -- diffFile = { fg = cp.sky._300 },
  -- diffLine = { fg = cp.red._500 },
  -- diffIndexLine = { fg = cp.pink._500 },

-- TODO: Side comments.
highlights.syntax = {
  Type = { fg = cp.blue._300, italic = true }, -- (preferred) int, long, char, etcp.
  Structure = { fg = cp.yellow._300 }, --  struct, union, enum, etcp.
  StorageClass = { fg = cp.yellow._300 }, -- static, register, volatile, etcp.
  Identifier = { fg = cp.violet._200 },
  Constant = { fg = cp.gray._200 },
  PreProc = { fg = cp.pink._300 },
  PreCondit = {fg = cp.white },
  Include = { fg = cp.pink._300 },
  Keyword = { fg = cp.red._300 },
  Define = { fg = cp.white },
  Typedef = { fg = cp.red._300, italic = true }, --  A typedef
  Exception = { fg = cp.blue._900 },
  Conditional = { fg = cp.rose._200 },
  Repeat = { fg = cp.rose._200 },
  Statement = { fg = cp.red._300 },
  Macro = { fg = cp.rose._200 },
  Error = { fg = cp.red._300 },
  Label = { fg = cp.red._300 },
  Special = { fg = cp.blue._300 }, -- (preferred) any special symbol
  SpecialChar = { fg = cp.blue._300 },
  Boolean = { fg = cp.rose._200, bold = true, italic = true },
  String = { fg = cp.blue._200 },
  Character = { fg = cp.red._300 },
  Number = { fg = cp.sky._100 },
  Float = { fg = cp.sky._100 },
  Function = { fg = cp.blue._300, bold = true },
  Operator = { fg = cp.rose._200 },
  Title = { fg = cp.blue._300 }, -- Titles for output from `:set all`, `autocmd` etc.
  Tag = { fg = cp.sky._300, bold = true },
  Delimiter = { fg = cp.gray._50 }, -- Delimiters (e.g., commas in a Lua table).
  Comment = { fg = cp.gray._500, italic = true }, -- Comments.
  SpecialComment = { fg = cp.red._900, italic = true }, -- Special comments.
  Todo = { fg = cp.green._300 },
}

-- TODO: Create local variables to link some TS and native HLGroups.
highlights.plugins.treesitter = {
  TSAttribute = { fg = cp.red._900 },
  TSBoolean = { fg = '#FBC19D', bold = true, italic = true },
  TSCharacter = { fg = cp.red._900 },
  TSCharacterSpecial = { fg = cp.red._900 },
  TSComment = { fg = cp.gray._500, italic = true },
  TSConditional = { fg = cp.rose._200 },
  TSConstant = { fg = '#FBC19D' },
  TSConstBuiltin = { fg = '#FBC19D' }, --None, __name__, __file__
  TSConstMacro = { fg = cp.red._900 },
  TSConstructor = { fg = cp.sky._200 }, -- __init__ reference
  TSDebug = { fg = cp.red._900 },
  TSDefine = { fg = cp.red._900 },
  TSError = { fg = cp.red._900 },
  TSException = { fg = cp.red._900 },
  TSField = { fg = cp.violet._200, italic = true },
  TSFloat = { fg = cp.red._900 },
  TSFunction = { fg = cp.sky._200, italic = true },
  TSFuncBuiltin = { fg = '#FBC19D' },
  TSFuncMacro = { fg = cp.red._350 },
  TSInclude = { fg = cp.indigo._200 }, -- import x as y
  TSKeyword = { fg = cp.red._300 }, -- Return statement
  TSKeywordFunction = { fg = cp.red._350 }, --def, lambda
  TSKeywordOperator = { fg = cp.indigo._200 }, -- and, or
  TSKeywordReturn = { fg = cp.indigo._200 }, --return, yield
  TSLabel = { fg = cp.indigo._300 }, -- Vim documentation titles
  TSMethod = { fg = cp.sky._200 }, -- x.conjugate()
  TSNamespace = { fg = cp.red._900 },
  TSNumber = { fg = cp.orange._300 }, -- numeros
  TSOperator = { fg = cp.gray._50 }, -- equals, add, minus
  TSParameter = { fg = cp.red._100 }, -- foo(BAR, BAZ)
  TSParameterReference = { fg = cp.red._900 }, --idk
  TSPreproc = { fg = cp.red._900 }, -- idk
  TSPunctDelimiter = { fg = cp.gray._50 }, --,; etc
  TSPunctBracket = { fg = cp.gray._400, italic = true }, -- () {} []
  TSPunctSpecial = { fg = cp.gray._400 },
  TSRepeat = { fg = cp.red._200 }, -- for
  TSStorageClass = { fg = cp.red._900 },
  TSString = { fg = cp.green._300 }, --strings
  TSStringRegex = { fg = cp.red._900 }, -- ?
  TSStringEscape = { fg = cp.sky._300, italic = true },
  TSStringSpecial = { fg = cp.red._350, italic = true },
  TSSymbol = { fg = cp.red._900 },
  TSTag = { fg = cp.orange._300 }, --html tags
  TSTagAttribute = { fg = cp.indigo._300, italic = true }, --html attr
  TSTagDelimiter = { fg = cp.gray._500, italic = true }, -- </>
  TSText = { fg = cp.gray._50 },
  TSStrong = { fg = cp.red._300 },
  TSEmphasis = { fg = cp.green._300 },
  TSUnderline = { fg = cp.red._900 },
  TSStrike = { fg = cp.red._900 },
  TSTitle = { fg = cp.indigo._300 },
  TSLiteral = { fg = cp.red._900 },
  TSURI = { fg = cp.sky._300, underline = true },
  TSMath = { fg = cp.red._900 }, -- latex math
  TSTextReference = { fg = cp.indigo._200 }, -- footnotes, citations
  TSEnvironment = { fg = cp.red._900 }, -- text enrionemtn of markup languages
  TSEnvironmentName = { fg = cp.red._900 }, -- e.g. \begin in latex.
  TSNote = { fg = cp.indigo._300, bold = true },--NOTE:
  TSWarning = { fg = cp.orange._300, bold = true }, --WARNING:
  TSDanger = { fg = cp.red._300, bold = true }, --BUG: FIXME:
  TSTodo = { fg = cp.red._900, bold = true }, --TODO: NOT WORKING?
  TSType = { fg = cp.blue._300 }, -- class
  TSTypeQualifier = { fg = cp.red._900 },
  TSTypeDefinition = { fg = cp.red._900 },
  TSVariable = { fg = cp.gray._50 },
  TSVariableBuiltin = { fg = cp.rose._50, italic = true }, -- this, self
}

highlights.plugins.diagnostic = {

  -- Used as the base highlight groups.
  DiagnosticError = { fg = cp.red._400 },
  DiagnosticWarn = { fg = cp.orange._300 },
  DiagnosticInfo = { fg = cp.sky._300 },
  DiagnosticHint = { fg = cp.indigo._300 },

  -- Diagnostic virtual text.
  DiagnosticVirtualTextError = { fg = cp.red._400, italic = true }, -- DiagnosticError: TODO: Link to one variable?
  DiagnosticVirtualTextWarn = { fg = cp.orange._300, italic = true },
  DiagnosticVirtualTextInfo = { fg = cp.sky._300, italic = true },
  DiagnosticVirtualTextHint = { fg = cp.indigo._300, italic = true },

  -- Underlining diagnostics.
  DiagnosticUnderlineError = { fg = cp.red._400, underline = true },
  DiagnosticUnderlineWarn = { fg = cp.orange._300, underline = true },
  DiagnosticUnderlineInfo = { fg = cp.sky._300, underline = true },
  DiagnosticUnderlineHint = { fg = cp.indigo._300, underline = true },

  -- Signs in sign column.
  DiagnosticSignError = { fg = cp.red._400 },
  DiagnosticSignWarn = { fg = cp.orange._300 },
  DiagnosticSignInfo = { fg = cp.sky._300 },
  DiagnosticSignHint = { fg = cp.indigo._300 },

}

highlights.plugins.lsp = { }

highlights.plugins.telescope = {
  TelescopeSelection = { fg = cp.sky._300 },

  TelescopePromptPrefix = { fg = cp.sky._300 },
  TelescopePromptNormal = { bg = cp.gray._875 },
  TelescopeResultsNormal = { bg = cp.gray._975 },
  TelescopePreviewNormal = { bg = cp.gray._1000 },

  TelescopePromptBorder = { fg = cp.gray._875, bg = cp.gray._875 },
  TelescopeResultsBorder = { fg = cp.gray._975, bg = cp.gray._975 },
  TelescopePreviewBorder = { fg = cp.gray._1000, bg = cp.gray._1000 },

  TelescopePromptTitle = { fg = cp.gray._875, bg = cp.gray._875 },
  TelescopeResultsTitle = { fg = cp.gray._975, bg = cp.gray._975 },
  TelescopePreviewTitle = { fg = cp.gray._1000, bg = cp.gray._1000 },
}

highlights.languages.markdown = {
  markdownTSNone = { fg = cp.indigo._200 },
  markdownTSLiteral = { fg = cp.indigo._200, italic = true },
}

M.setup = function ()
  M.set_highlights(highlights.common)
  M.set_highlights(highlights.syntax)

  for _, plugin in pairs(highlights.plugins) do
    M.set_highlights(plugin)
  end

  for _, language in pairs(highlights.languages) do
    M.set_highlights(language)
  end

end

M.set_highlights = function (highlights)
  for k, v in pairs(highlights) do
    vim.api.nvim_set_hl(0, k, v)
  end
end

return M
