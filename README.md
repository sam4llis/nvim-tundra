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
> the user's settings to be respected.

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

[nvim-0.7.0]: https://github.com/neovim/neovim/releases/tag/v0.7.0
[nvim-nightly]: https://github.com/neovim/neovim/releases/tag/nightly
[vim-plug]: https://github.com/junegunn/vim-plug
