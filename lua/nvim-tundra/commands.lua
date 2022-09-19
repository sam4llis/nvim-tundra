-- Imports.
local biomes = require('nvim-tundra.biomes')

-- A command to pick the theme used by nvim-tundra. The argument must equal a
-- key in the `biomes` table (e.g., 'light') or a value in the `biomes` table
-- (e.g., 'alpine') to work.
vim.api.nvim_create_user_command('Tundra',
  function(opts)
    -- Check that the argument is a valid input.
    if not (vim.tbl_contains(vim.tbl_values(biomes), opts.args) or vim.tbl_contains(vim.tbl_keys(biomes), opts.args)) then
      vim.api.nvim_err_writeln('[nvim-tundra] Invalid biome name')
      return
    end

    -- If the user specifies `light` or `dark` as the argument then convert it
    -- to its respective biome name.
    local biome = vim.tbl_get(biomes, opts.args)
    if biome then
      vim.g.tundra_biome = biome
    else
      vim.g.tundra_biome = opts.args
    end

    vim.cmd('colorscheme tundra')
  end,
  {
    nargs = 1,
    complete = function(line)
      return vim.tbl_filter(
        function(value)
          return vim.startswith(value, line)
        end,
        vim.tbl_values(biomes)
      )
    end,
  }
)
