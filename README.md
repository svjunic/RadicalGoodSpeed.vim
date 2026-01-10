# RadicalGoodSpeed.vim

RadicalGoodSpeed.vim is a colorscheme for Vim and Neovim.

Language: English | [日本語](README.ja.md)

## Screenshot

### TypeScript

![TypeScript](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/ts.png)

This screenshot was taken with the following Neovim setup:
- nvim-treesitter/nvim-treesitter
- neovim/nvim-lspconfig
- hrsh7th/nvim-cmp
- hrsh7th/cmp-nvim-lsp

### HTML

![HTML](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/html.png)

### Python

![Python](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/py.png)

## Install

Note: options like `termguicolors` and `g:radicalgoodspeed_force_cterm` must be set **before** applying the colorscheme.

### Manual install (Neovim / pack)

```sh
git clone https://github.com/svjunic/RadicalGoodSpeed.vim.git \
  ~/.config/nvim/pack/colors/start/RadicalGoodSpeed.vim
```

Example `init.lua`:

```lua
vim.o.termguicolors = true
-- vim.g.radicalgoodspeed_force_cterm = 1 -- set BEFORE :colorscheme
-- Use this when your terminal is NOT truecolor (e.g. 256-color), or when you use :set notermguicolors.

vim.cmd.colorscheme("radicalgoodspeed")
```

### dein

If you use [dein](https://github.com/Shougo/dein.vim), add the following:

```vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('svjunic/RadicalGoodSpeed.vim')

  call dein#end()
  call dein#save_state()
endif
```

If you use TOML (e.g. dein.toml):

```toml
[[plugins]]
repo = 'svjunic/RadicalGoodSpeed.vim'
```

### lazy.nvim

```lua
require("lazy").setup({
  {
    "svjunic/RadicalGoodSpeed.vim",
    lazy = false,
    priority = 1000,
    init = function()
      -- must be set BEFORE :colorscheme
      vim.o.termguicolors = true
      -- vim.g.radicalgoodspeed_force_cterm = 1 -- set BEFORE :colorscheme
      -- Use this when your terminal is NOT truecolor (e.g. 256-color), or when you use :set notermguicolors.
    end,
    config = function()
      vim.cmd.colorscheme("radicalgoodspeed")
    end,
  },
})
```

## Apply

```vim
colorscheme radicalgoodspeed
```

## Options

### Force CTERM fallback (Neovim)

If your terminal does not support true color, or you want to force the legacy (cterm) highlights even on Neovim, set:

```vim
let g:radicalgoodspeed_force_cterm = 1
```

Then apply the colorscheme as usual:

```vim
colorscheme radicalgoodspeed
```

## Internal structure (Vim / Neovim)

This repository keeps `colors/radicalgoodspeed.vim` as the only entry point.

- Vim: loads a minimal legacy implementation from `autoload/radicalgoodspeed/vim.vim`.
- Neovim: delegates to Lua (`lua/radicalgoodspeed/init.lua`).

Neovim-side code is organized to make future expansion easy:

```
lua/radicalgoodspeed/
  palette.lua        -- color data only (no side effects)
  groups.lua         -- core highlight groups
  ts.lua             -- Tree-sitter (@...) links
  lsp.lua            -- LSP / semantic tokens (@lsp...) links
  integrations/
    telescope.lua
    cmp.lua
    gitsigns.lua
  init.lua            -- orchestrates everything
```

Integration modules are safe to load: they use `pcall(require, ...)` and do nothing when the plugin is not installed.

