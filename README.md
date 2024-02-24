<section align="center">
  <img width="256" height="256" src="https://user-images.githubusercontent.com/43378933/198876241-1e4df46a-9351-4d21-9aaa-48f763486843.svg" />
  <br>
  <br>
  <p>
    <a href="https://github.com/sam4llis/nvim-tundra/stargazers"><img src="https://img.shields.io/github/stars/sam4llis/nvim-tundra?colorA=1F2937&colorB=A5B4FC&style=for-the-badge"></a>
    <a href="https://github.com/sam4llis/nvim-tundra/issues"><img src="https://img.shields.io/github/issues/sam4llis/nvim-tundra?colorA=1F2937&colorB=B5E8B0&style=for-the-badge"></a>
    <a href="https://github.com/sam4llis/nvim-tundra/contributors"><img src="https://img.shields.io/github/contributors/sam4llis/nvim-tundra?colorA=1F2937&colorB=FBC19D&style=for-the-badge"></a>
    <a href="https://github.com/sam4llis/nvim-tundra/network/members"><img src="https://img.shields.io/github/forks/sam4llis/nvim-tundra?colorA=1F2937&colorB=FECDD3&style=for-the-badge"></a>
  </p>
  <p>A customisable theme for Neovim with support for popular Neovim plugins. Written in Lua.</p>
  <hr>
</section>

<br>

<table align="center">
  <tr>
    <td>
      <img width="767" alt="Lua" src="https://user-images.githubusercontent.com/43378933/200200134-518d715a-bc26-4863-baa4-c3126a2213f3.png">
    </td>
    <td>
      <img width="767" alt="nvim-tree" src="https://user-images.githubusercontent.com/43378933/200200274-6d1834ae-f90a-450e-879e-07cb9a2383a3.png">
    </td>
  </tr>
  <tr>
    <td>
      <img width="767" alt="Python-Arctic" src="https://user-images.githubusercontent.com/43378933/200200212-8e474493-f002-4509-a904-84cf66a77019.png">
    </td>
    <td>
      <img width="758" alt="Python-Jungle" src="https://github.com/sam4llis/nvim-tundra/assets/43378933/f81ae49d-9b0a-452b-9b45-3826e902509e">
    </td>
  </tr>
  <tr>
    <td>
      <img width="767" alt="telescope.nvim-Arctic" src="https://user-images.githubusercontent.com/43378933/200200315-b2ad9716-6462-443b-83d1-6f6cf366d88d.png">
    </td>
    <td>
      <img width="767" alt="telescope.nvim-Jungle" src="https://github.com/sam4llis/nvim-tundra/assets/43378933/113483ca-7a4e-4a8e-9f89-64d4fc40c7c6">
    </td>
  </tr>
   <tr>
    <td>
      <img width="767" alt="nvim-cmp" src="https://user-images.githubusercontent.com/43378933/200200349-36c405ea-0441-4ca8-8a94-e731f0ee84ea.png">
    </td>
    <td>
      <img width="787" alt="Transparent background" src="https://user-images.githubusercontent.com/43378933/200200389-9891f364-eaa9-46ff-9e40-3a376b64aafd.png">
    </td>
  </tr>
</table>

<br>

## Features

- Extensible user configuration.

- Integration with [popular Vim/Neovim plugins](#supported-plugins).

- Change [configuration settings on the fly](#command-line-sugar) with the `:Tundra` command.

<br>

## Requirements

- Neovim [v0.7.0][nvim-v0.7.0] or higher.

> [!IMPORTANT]<br>
> Some plugin integrations require Neovim v0.8. If your Neovim version doesn't
> support a plugin integration, Tundra displays a warning message when enabling
> that integration. Use Neovim [v0.8.0][nvim-v0.8.0] or higher, or downgrade to
> Tundra [v0.1.0][tundra-v0.1.0] to avoid warning messages.

- A terminal with true colour support.

> [!NOTE]<br>
> The default macOS terminal doesn't support true colour. Use a terminal that
> supports true colour such as [iTerm2][iterm2].

[nvim-v0.7.0]: https://github.com/neovim/neovim/releases/tag/v0.7.0
[nvim-v0.8.0]: https://github.com/neovim/neovim/releases/tag/v0.8.0
[tundra-v0.1.0]: https://github.com/sam4llis/nvim-tundra/releases/tag/v0.1.0
[iterm2]: https://iterm2.com

<br>

## Installation

Install Tundra with your favourite package manager.

```lua
use 'sam4llis/nvim-tundra' -- packer.nvim
```

```vim
Plug 'sam4llis/nvim-tundra' " vim-plug
```

<br>

## Usage

To use Tundra's [default configuration][configuration], add the following to
your Neovim configuration:

```lua
vim.g.tundra_biome = 'arctic' -- 'arctic' or 'jungle'
vim.opt.background = 'dark'
vim.cmd('colorscheme tundra')
```

[configuration]: https://github.com/sam4llis/nvim-tundra/blob/main/lua/nvim-tundra/base_configuration.lua

<br>

## Configuration

Tundra provides a `setup` function to overwrite default settings. Omitted fields
in the `setup` function default to their respective default configuration
setting. The creator of Tundra recommends the following configuration as a
starting point:

```lua
require('nvim-tundra').setup({
  transparent_background = false,
  dim_inactive_windows = {
    enabled = false,
    color = nil,
  },
  sidebars = {
    enabled = true,
    color = nil,
  },
  editor = {
    search = {},
    substitute = {},
  },
  syntax = {
    booleans = { bold = true, italic = true },
    comments = { bold = true, italic = true },
    conditionals = {},
    constants = { bold = true },
    fields = {},
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
    semantic_tokens = true,
    treesitter = true,
    telescope = true,
    nvimtree = true,
    cmp = true,
    context = true,
    dbui = true,
    gitsigns = true,
    neogit = true,
    textfsm = true,
  },
  overwrite = {
    colors = {},
    highlights = {},
  },
})

vim.g.tundra_biome = 'arctic' -- 'arctic' or 'jungle'
vim.opt.background = 'dark'
vim.cmd('colorscheme tundra')
```

You must invoke the `setup` function before the `:colorscheme tundra` command to
respect your configuration settings.

> [!NOTE]<br>
> You can omit empty tables and `nil` fields in the configuration table to
> respect default settings.

<!-- vale off -->
### Special integrations
<!-- vale on -->

<details>
  <summary>lualine.nvim</summary>
  <br>

  To use the Tundra integration for `lualine.nvim`, add the following to your
  Neovim configuration:

  ```lua
  require('lualine').setup({
    options = {
      -- ...
      theme = 'tundra',
      -- ...
    },
  })
  ```
</details>

<br>

## Settings

### General

- `transparent_background` (boolean): If true, certain highlight groups inherit
  a transparent background. Defaults to `false`.

- `dim_inactive_windows` (table):

  - `enabled` (boolean): If true, non-current windows inherit the background
    colour `color`. Defaults to `false`.

  - `color` (string | nil): A hexadecimal colour value or colour keyword that
    the background of non-current windows inherits. If nil, non-current windows
    use the [default colour][dim colour] for dimmed windows. Defaults to `nil`.

- `sidebars` (table):

  - `enabled` (boolean): If true, all 'sidebar' windows (outlined below) inherit
    the background colour `color`. Defaults to `false`.

  - `color` (string | nil): A hexadecimal colour value or colour keyword that
    the background of 'sidebar' windows inherits. If nil, all 'sidebar' windows
    use the [default colour][sidebar colour] for 'sidebar' windows. Defaults to
    `nil`.

  - `filetypes` (array[str] table): Defines filetypes treated as 'sidebar'
     windows. Leaving `filetypes` as an empty table inherits the default
     filetypes. Adding a filetype to `filetypes` overwrites the default
     filetypes. Defaults to [`sidebars.filetypes`][filetypes].

> [!NOTE]<br>
> You can toggle general settings using the `:Tundra` [command line sugar](#command-line-sugar).

[dim colour]: https://github.com/sam4llis/nvim-tundra/blob/main/lua/nvim-tundra/stylesheet/arctic.lua#L21
[sidebar colour]: https://github.com/sam4llis/nvim-tundra/blob/main/lua/nvim-tundra/stylesheet/arctic.lua#L24
[filetypes]: https://github.com/sam4llis/nvim-tundra/blob/main/lua/nvim-tundra/base_configuration.lua#L11-L18

### Plugins

The `plugins` subtable in the Tundra [setup function](#configuration) activates
plugin-specific highlight groups for [supported plugins](#supported-plugins).
The base configuration implicitly enables native LSP and [nvim-treesitter] by
default. Enabling other supported plugins requires a `setup` function call.

For example, to use Tundra's [telescope.nvim] highlight groups:

```lua
require('nvim-tundra').setup({
  -- ...
  plugins = {
    telescope = true,
  },
  -- ...
})
```

[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[telescope.nvim]: https://github.com/nvim-telescope/telescope.nvim

### Miscellaneous

In the preceding [example configuration](#configuration) the `editor`, `syntax`,
and `diagnostics` subtables provide an interface to overwrite styles for
specific elements. Each field within these subtables can accept any key from
`h: highlight args` as a boolean.

- A common use-case for `editor` subtable involves reversing the highlight groups
  for the `search` and `substitute` fields by adding a `reverse = true` flag to
  the respective field.

- Conventionally, syntactic elements like booleans and functions use the `syntax`
  subtable to add key-value pairs such as `bold = true` and `italic = true`.

- A common use-case for the `diagnostic` subtable involves changing the
  foreground or background colour of diagnostic groups using the respective
  `fg = '<HEX_VALUE>'` or `bg = '<HEX_VALUE>'` flags.

<br>

## Command line sugar

You can change Tundra configuration settings in real-time using the `:Tundra`
command.

- `:Tundra toggle_transparency`: Toggles the `transparent_background` option
  specified in the Tundra `setup` function.

- `:Tundra toggle_dim`: Toggles the `dim_inactive_windows.enabled` option
  specified in the Tundra `setup` function.

- `:Tundra toggle_sidebars`: Toggles the `sidebars.enabled` option specified in
  the Tundra `setup` function.

<br>

## Customising highlights

<details>
  <summary>Overwriting syntax groups</summary>
  
  <br>
  
  The `syntax` subtable in Tundra's `setup` function can accept foreground or
  background colours to overwrite syntax highlight groups. As an example, if you
  want to change boolean elements from an `orange` shade to an `indigo` shade, you
  can add the following to the `setup` function in your configuration:

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
  ```

  The `fg` and `bg` flags also accept hexadecimal values if you want to add your
  own colours.

  > Colour shades in Tundra palettes range from `0` to `1000`. These numbers
  > represent the lightest and darkest shades of each colour. Shades typically
  > increment in values of `100`.
</details>

<details>
  <summary>Overwriting Tundra colours</summary>
  
  <br>

  To change a particular colour in the Tundra theme, add it to the
  `overwrite.colors` subtable in the Tundra `setup` function. As an example, if
  you want to change the `sky._500` colour to a custom shade of blue, you can add
  the following to the `setup` function in your configuration:

  ```lua
  require('nvim-tundra').setup({
    -- ...
    overwrite = {
      colors = {
        sky = {
          _500 = '#6EABCF', -- An `ocean` colour instead of `sky`.
        },
      },
    },
    -- ...
  })
  ```
</details>

<details>
  <summary>Overwriting highlight groups</summary>
  
  <br>
  
  To change a highlight group in the Tundra theme, add it to the
  `overwrite.highlights` subtable in the Tundra `setup` function. As an example,
  if you want to change the `@field` treesitter highlight group to have a bold and
  red foreground you can add the following to the `setup` function in your
  configuration:

  ```lua
  local cp = require('nvim-tundra.palette.arctic')

  require('nvim-tundra').setup({
    -- ...
    overwrite = {
      highlights = {
        ['@field'] = { fg = cp.red._400, bold = true },
      },
    },
    -- ...
  })
  ```

  > Highlights defined in the `overwrite.highlights` subtable take precedence over
  > highlights defined in the `editor` and `syntax` subtables in Tundra's `setup`
  > function.
</details>

<br>

## Extras

The [extras] folder of this repository contains configurations for
**Alacritty**, **fzf**, **iTerm-2**, **Kitty**, **WezTerm**, and **Windows
Terminal**. To use these configurations, refer to the respective documentation.

[extras]: https://github.com/sam4llis/nvim-tundra/tree/main/extras

<br>

## Supported plugins

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [vim-textfsm](https://github.com/oasys/vim-textfsm)

<br>

## Acknowledgements

- The [Catppuccin](https://github.com/catppuccin/nvim) colorscheme for Neovim,
  for inspiring the extensible user configuration options for Tundra.

- The [Nightfox](https://github.com/EdenEast/nightfox.nvim) colorscheme for
  Neovim, for inspiring the distinction between colors and palettes for Tundra.

- The [NvChad](https://github.com/NvChad/NvChad) configuration, for inspiring
  the UI and highlight groups for [Telescope](https://github.com/nvim-telescope/telescope.nvim).

- Logo inspired from the artist
  [RNH](https://www.shutterstock.com/g/roctopus29).
