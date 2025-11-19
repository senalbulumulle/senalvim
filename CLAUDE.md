# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

senalvim is a custom Neovim wrapper/configuration focused on performance and custom features. It eschews traditional Neovim package managers in favor of a shell-script-based approach that clones plugins directly into Neovim's runtime path.

## Key Architecture Decisions

### No Traditional Package Manager
The project intentionally avoids package managers like lazy.nvim or packer.nvim. Instead, plugins are managed through shell scripts in `shell-scripts/` that clone repositories directly to `~/.local/share/nvim/site/pack/plugins/start/`. This provides faster startup performance at the cost of manual dependency management.

### Custom Keybindings
The configuration uses unconventional keybindings inspired by piano-like hand positions:
- `lkj` - delete line (instead of `dd`)
- `asd` followed by `<Enter>` - save file (instead of `:w<Enter>`)
- `zxc` followed by `<Enter>` - save and quit with force (instead of `:wq!<Enter>`)

These mappings are defined in `nvim/init.lua`.

## Development Commands

### Running senalvim for Development
```bash
make run
# Or directly:
nvim -u nvim/init.lua
```

### Installing senalvim
```bash
make install
```
Note: The install target copies `nvim/` to `~/.config/` - you may need to update the path in the Makefile for your system.

### Installing Plugins
Execute the appropriate shell script from the `shell-scripts/` directory:
```bash
bash shell-scripts/install-package--plenary.nvim.sh
```

Each script clones a plugin repository directly into `~/.local/share/nvim/site/pack/plugins/start/`.

## Codebase Structure

- `nvim/init.lua` - Main Neovim configuration entry point with editor settings and keybindings
- `shell-scripts/` - Plugin installation scripts (shell-based package manager)
- `src/main.c` - Currently a blank file; future C extension development
- `Makefile` - Build commands for development workflow

## Configuration Philosophy

The project prioritizes:
1. **Performance** over convenience - direct git clones instead of lazy-loading
2. **Compatibility** - targets both older (0.9.5) and newer (0.11.2) Neovim versions
3. **Custom UI** - future plans include CSS-like syntax for UI customization

## Important Notes

- Tab width is set to 8 spaces (vim.opt.tabstop = 8, shiftwidth = 8) - this is intentional
- The startup screen is disabled (shortmess:append('I'))
- All plugins must be manually managed via shell scripts - there is no automated dependency resolution
