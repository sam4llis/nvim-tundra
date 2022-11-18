# Alacritty theme for Tundra

## Installation instructions

- Add the contents inside `alacritty.yml` into your own `~/.config/alacritty/alacritty.yml` config file

## Using multiple themes

You can also create a `colors.yml` to define multiple themes:

alacritty.yml:

```yaml
import:
  - "~/.config/alacritty/colors.yml"
```

colors.yml:

```yaml
schemes:
  # Tundra!
  tundra: &tundra
    primary:
      background: "0x111827"
      foreground: "0xD1D5DB"

    # Colors the cursor will use if `custom_cursor_colors` is true
    cursor:
      text: "0x111827"
      cursor: "0xD1D5DB"

    normal:
      black: "0x6B7280"
      red: "0xFCA5A5"
      green: "0xB1E3AD"
      yellow: "0xFBC19D"
      blue: "0xBAE6FD"
      magenta: "0x957FB8"
      cyan: "0xDDD6FE"
      white: "0xA5F3FC"

    bright:
      black: "0x6B7280"
      red: "0xFCA5A5"
      green: "0xB1E3AD"
      yellow: "0xFBC19D"
      blue: "0xBAE6FD"
      magenta: "0x938AA9"
      cyan: "0xDDD6FE"
      white: "0xA5F3FC"

  # Catppuccin!
  catppuccin: &catppuccin
    primary:
      background: "0x1E1D2F"
      foreground: "0xD9E0EE"

    cursor:
      text: "0x1E1D2F"
      cursor: "0xF5E0DC"

    normal:
      black: "0x6E6C7E"
      red: "0xF28FAD"
      green: "0xABE9B3"
      yellow: "0xFAE3B0"
      blue: "0x96CDFB"
      magenta: "0xF5C2E7"
      cyan: "0x89DCEB"
      white: "0xD9E0EE"

    bright:
      black: "0x988BA2"
      red: "0xF28FAD"
      green: "0xABE9B3"
      yellow: "0xFAE3B0"
      blue: "0x96CDFB"
      magenta: "0xF5C2E7"
      cyan: "0x89DCEB"
      white: "0xD9E0EE"

    indexed_colors:
      - { index: 16, color: "0xF8BD96" }
      - { index: 17, color: "0xF5E0DC" }

# Set colorscheme
colors: *tundra
```
