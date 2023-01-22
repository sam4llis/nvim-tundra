local M = {}

M.map = function(ss, opts)
  return {

    -- Normal text highlights.
    Normal = {
      fg = ss.fg.normal,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.normal,
    }, -- Current window.

    NormalNC = {
      fg = ss.fg.normal,
      bg = (opts.dim_inactive_windows.enabled and (opts.dim_inactive_windows.color or ss.bg.dimmed))
          or (opts.transparent_background and ss.bg.transparent)
          or ss.bg.normal,
    }, -- Non-current windows.

    NormalFloat = { fg = ss.fg.normal, bg = ss.bg.floating }, -- Floating window.

    -- NOTE: This is not a default editor highlight group.
    NormalSB = {
      fg = ss.fg.normal,
      bg = (opts.sidebars.enabled and (opts.sidebars.color or ss.bg.sidebar))
          or (opts.transparent_background and ss.bg.transparent)
          or ss.bg.sidebar,
    }, -- Sidebar windows.

    -- Fold and sign column highlights.
    Folded = {
      fg = ss.fg.conceal,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.floating
    }, -- Line used for closed folds.
    FoldColumn = { fg = ss.fg.conceal }, -- The `foldcolumn`.
    SignColumn = { fg = ss.fg.conceal }, -- Column where signs are displayed.

    -- Cursor highlights.
    Cursor = { fg = ss.bg.normal, bg = ss.fg.normal }, -- Character under the cursor.
    lCursor = { link = 'Cursor' }, -- Character under the cursor when `language-mapping` is used.
    CursorIM = { link = 'Cursor' }, -- Like Cursor, but when used in IME mode.
    CursorColumn = { link = 'CursorLine' }, -- Screen-column at the cursor, when `cursorcolumn` is set.
    CursorLine = { bg = ss.bg.cursorline }, -- Screen-line at the cursor, when `cursorline` is set.
    ColorColumn = { bg = ss.bg.colorcolumn }, -- Used for the columns set with `colorcolumn`.
    Conceal = { fg = ss.fg.conceal }, -- Placeholder characters substituted for concealed text.

    -- Visual mode highlights.
    Visual    = { bg = ss.bg.visual }, -- Visual mode selection.
    VisualNOS = { link = 'Visual' }, -- Visual mode selection when vim is 'Not Owning the Selection'.

    -- Line number highlights.
    LineNr = { fg = ss.fg.lnumber }, -- Line number for `:number` and `:#` commands, and when `number` or `relativenumber` option is set.
    CursorLineNr = { fg = ss.diagnostics.warning, bold = true }, -- Like LineNr when `cursorline` is set and `cursorlineopt` contains `number` or is `both`, for the cursor line.

    -- Popup menu highlights.
    Pmenu        = { fg = ss.fg.normal, bg = ss.bg.floating }, -- Popup menu: Normal item.
    PmenuSel     = { bg = ss.bg.visual }, -- Popup menu: Selected item.
    PmenuSbar    = { link = 'Pmenu' }, -- Popup menu: Scrollbar.
    PmenuThumb   = { bg = ss.fg.whitespace }, -- Popup menu: Thumb of the scrollbar.
    Question     = { link = 'MoreMsg' }, -- `hit-enter` prompt and yes/no questions
    QuickFixLine = { link = 'CursorLine' }, -- Current `quickfix` item in the quickfix window. Combined with `hl-CursorLine` when the cursor is there.

    -- Search/substitution highlights.
    Search = vim.tbl_extend('force', {
      fg = ss.bg.normal,
      bg = ss.diagnostics.information,
      bold = true,
    }, opts.editor.search), -- Last search pattern.

    IncSearch = vim.tbl_extend('force', {
      fg = ss.bg.normal,
      bg = ss.diagnostics.hint,
      bold = true,
    }, opts.editor.search), -- `incsearch` highlighting; also used for the text replaced with ':s///c'.

    CurSearch = { link = 'IncSearch' }, -- Used for highlighting a search pattern under the cursor (see `hlsearch`).

    Substitute = vim.tbl_extend('force', {
      fg = ss.bg.normal,
      bg = ss.diagnostics.error,
      bold = true,
    }, opts.editor.substitute), -- Substitute replacement text.

    -- Statusline highlights.
    StatusLine   = {
      fg = ss.fg.statusline,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.normal,
    }, -- Status line of current window.

    StatusLineNC = {
      fg = ss.fg.normal,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.normal,
    }, -- Status lines of not-current windows Note: if this is equal to 'StatusLine' Vim will use '^^^' in the status line of the current window.

    -- Tabline highlights.
    TabLine = {
      fg = ss.fg.statusline,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.normal,
    }, -- Tab pages line, not active tab page label.

    TabLineFill = {
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.normal,
    }, -- Tab pages line, where there are no labels.

    TabLineSel = {
      fg = opts.transparent_background and ss.syntax.func
          or ss.bg.statusline,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.cursorline,
      bold = opts.transparent_background and true or false,
      -- bg = ss.bg.cursorline,
    }, -- Tab pages line, active tab page label.

    -- Winbar highlights.
    WinBar = {
      fg = ss.statusline,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.normal,
      bold = true,
    }, -- Window bar of current window.

    WinBarNC = {
      fg = ss.statusline,
      bg = opts.transparent_background and ss.bg.transparent
          or ss.bg.floating,
      bold = true,
    }, -- Window bar of not-current windows.

    -- Spelling highlights.
    -- Word that is not recognized by the spellchecker. `spell` Combined with the highlighting used otherwise.
    SpellBad = {
      fg = ss.bg.normal,
      bg = ss.diagnostics.error,
      sp = ss.diagnostics.error,
      bold = true,
      undercurl = true,
    },

    -- Word that should start with a capital. `spell` Combined with the highlighting used otherwise.
    SpellCap = {
      fg = ss.bg.normal,
      bg = ss.diagnostics.warning,
      sp = ss.diagnostics.warning,
      bold = true,
      undercurl = true,
    },

    -- Word that is recognized by the spellchecker as one that is used in another region. `spell` Combined with the highlighting used otherwise.
    SpellLocal = {
      fg = ss.bg.normal,
      bg = ss.diagnostics.information,
      sp = ss.diagnostics.information,
      bold = true,
      undercurl = true,
    },

    -- Word that is recognized by the spellchecker as one that is hardly ever used. `spell` Combined with the highlighting used otherwise.
    SpellRare = {
      fg = ss.bg.normal,
      bg = ss.diagnostics.information,
      sp = ss.diagnostics.information,
      bold = true,
      undercurl = true,
    },

    -- Warning/error message highlights.
    ErrorMsg = { fg = ss.diagnostics.error }, -- Error messages on the command line.
    WarningMsg = { fg = ss.diagnostics.warning }, -- Warning messages on the command line.

    -- Diff highlights.
    DiffAdd = { bg = ss.diff.add }, -- Diff mode: Added line.
    DiffChange = { bg = ss.diff.change }, -- Diff mode: Changed line.
    DiffDelete = { fg = ss.diff.delete.fg, bg = ss.diff.delete.bg }, -- Diff mode: Deleted line.
    DiffText = { bg = ss.diff.text }, -- Diff mode: Changed text within a changed line.

    -- Miscellaneous highlights.
    Directory    = { fg = ss.syntax.func }, -- Directory names (and other special names in listings).
    EndOfBuffer  = { fg = ss.bg.normal }, -- Filler lines (~) after the end of the buffer.
    FloatBorder  = { fg = ss.bg.cursorcolumn }, -- Floating window border.
    MatchParen   = { fg = ss.diagnostics.warning, bold = true }, -- Character under the cursor or just before it, if it is a paired bracket, and its match.
    ModeMsg      = { fg = ss.diagnostics.warning, bold = true }, -- `showmode' message (e.g., '-- INSERT --').
    MoreMsg      = { fg = ss.diagnostics.information, bold = true }, -- `more-prompt`.
    NonText      = { fg = ss.bg.normal }, -- `@` at the end of the window, characters from `showbreak` and other characters that do not really exist in the text.
    SpecialKey   = { link = 'NonText' }, -- Unprintable characters: text displayed differently from what it really is.  But not `listchars` whitespace.
    Title        = { fg = ss.syntax.func }, -- Titles for output from ':set all', ':autocmd' etc.
    Whitespace   = { fg = ss.fg.whitespace }, -- 'nbsp', 'space', 'tab' and 'trail' in `listchars`.
    WildMenu     = { link = 'Pmenu' }, -- current match in 'wildmenu' completion
    WinSeparator = { fg = ss.fg.conceal }, -- Separators between window splits.

  }
end

return M
