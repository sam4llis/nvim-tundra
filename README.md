# Tundra

Tundra is a customisable theme for Neovim with built-in support for popular
Neovim plugins. Written in Lua.

<div align="center">
  <img width="740" alt="syntax" src="https://user-images.githubusercontent.com/43378933/188616879-5de60642-2ee2-4632-8afe-18156fb7a16f.png">
  <img width="740" alt="telescope" src="https://user-images.githubusercontent.com/43378933/188617076-fb0f99dc-75f8-4849-a52c-d91f8d6bf743.png">
</div>

## Features

* Extensible user configuration with Tundra's `setup()` function.

    * Overwrite and adjust editor/syntax highlight groups to your liking.
    * Enable/disable integrations with various plugins.

* Integration with popular Neovim plugins:

    * [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    * [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
    * [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
    * [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
    * [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    * [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Getting Started

### Requirements

* [Neovim (v0.7.0)](nvim-0.7.0) or the latest [Neovim (Nightly)](nvim-nightly)
  is required.

* A terminal with true colour support is required.

### Installation

You can install this extension with your favourite package manager. As an
example, for [vim-plug]:

```vim
Plug 'sam4llis/nvim-tundra'
```

## Usage

To use the built-in configuration, add the following to your Neovim
configuration:

```lua
vim.opt.background = 'dark'
vim.cmd('colorscheme tundra')
```

## Configuration

Tundra provides a `setup(opts)` function that allow you to overwrite any default
settings. User settings are passed into the setup function as a Lua table. As an
example, this is my personal configuration for the Tundra colorscheme:

```lua
require('nvim-tundra').setup({
  transparent_background = false,
  editor = {
    search = {},
    substitute = {},
  },
  syntax = {
    booleans = { bold = true, italic = true },
    comments = { bold = true, italic = true },
    conditionals = {},
    constants = { bold = true },
    functions = {},
    keywords = {},
    loops = {},
    numbers = { bold = true },
    operators = { bold = true },
    punctuation = {},
    strings = {},
    types = { italic = true },
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
    cmp = true,
    context = true,
    gitsigns = true,
    telescope = true,
  },
})

vim.opt.background = 'dark'
vim.cmd('colorscheme tundra')
```

> NOTE: The `setup()` function must be invoked before `colorscheme tundra` for
> the user's settings to be respected. You can also remove empty tables `{}` if
> you don't want to overwrite a default setting.

### General Settings

General settings are independent to any syntax, editor, or plugin group.

* `transparent_background` (boolean): If true, background colours are disabled
  on certain highlight groups to give a transparent background.

### Syntax Settings

Syntax settings provide a simple interface to overwrite styles for syntactic
elements, such as booleans or functions. Each field can accept any key from `:h
highlight-args` as a boolean. Syntax settings are conventionally used to add
`bold = true` or `inverse = true` to an element.

### Editor Settings

Editor settings provide a simple interface to overwrite styles for Neovim editor
highlights. A common use-case is to reverse the highlight arguments on the
`search` and `substitute` fields. This is achieved by adding the `reverse =
true` option to the respective field. Each field can accept any key from `h
highlight-args` as a boolean.

### Plugin Settings

Plugin settings provide a simple interface to add semantic highlights for
specific plugins. By default, all plugins are disabled except for native LSP and
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter). All other
supported plugins must be explicitly opted in via the user's `setup()` call in
their neovim configuration. As an example, to opt in Tundras'
[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) highlights:

```lua
require('nvim-tundra').setup({
  -- ...
  plugins = {
    telescope = true,
  },
  -- ...
})
```

## Customising Highlights

### Get Tundra Colours

This returns a Lua table, where each key is the colour name and each value is
its hexadecimal colour. Most colours have multiple shades, so you may need to
specify the shade of the colour you want to use. Here's a quick example:

```lua
-- Get the 'arctic' (default) colour palette.
local cp = require('nvim-tundra.palette.arctic')

-- You can view all colours/shades using the following command.
print(vim.inspect(cp))

print(vim.inspect(cp.indigo))
-- Output: { _400 = '#DDD6FE', _500 = '#A5B4FC', _800 = '#424674', _900 = '#28304D' }

print(vim.inspect(cp.indigo._500))
-- Output: '#A5B4FC'
```

> NOTE: Colour shades are represented in Tundra palettes as a value from 0 to
> 1000, where 0 is the lightest shade of the colour, and 1000 is the darkest
> shade of the colour. Shades will usually increment in values of 100.

### Overwriting Tundra Groups

Overwriting Tundra groups is as simple as passing a new foreground (`fg`) and
background (`bg`) colour into the correct field. For example, if you prefer
booleans to be an `indigo` shade rather than the default `orange`, you can add
the following to the setup configuration.

```lua
local cp = require('nvim-tundra.palette.arctic')

require('nvim-tundra').setup({
  -- ...
  syntax = {
    -- ...
    booleans = { fg = cp.indigo._400, bold = true, italic = true },
    -- ...
  },
  -- ...
})

vim.opt.background = 'dark'
vim.cmd('colorscheme tundra')
```

Hexadecimal values can also be passed into `fg` and `bg` fields if you want to
add your own colours.

[nvim-0.7.0]: https://github.com/neovim/neovim/releases/tag/v0.7.0
[nvim-nightly]: https://github.com/neovim/neovim/releases/tag/nightly
[vim-plug]: https://github.com/junegunn/vim-plug
