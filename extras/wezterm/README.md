# wezterm theme for Tundra

## Installation instructions

- Add the `colors` table found in `wezterm.lua` to the returned table in your
  wezterm configuration file.

- As an example, your wezterm configuration file should look like the following
  code:

  ```lua
  local wezterm = require('wezterm')

  return {
    -- ...
    colors = {
      -- Tundra colours from `wezterm.lua` here ...
    },
    -- ...
  }
  ```
