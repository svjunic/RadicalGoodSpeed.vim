# RadicalGoodSpeed.vim

*RadicalGoodSpeed.vim* is a high-contrast Vim color scheme.

## Screenshot

### TypeScript

![TypeScript](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/ts.png)

This capture uses the following Javascript syntax:  
 - nvim-treesitter/nvim-treesitter
 - neovim/nvim-lspconfig
 - hrsh7th/nvim-cmp
 - hrsh7th/cmp-nvim-lsp

Please bundling.


### html

![html](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/html.png)


### Python

![Python](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/py.png)

## install details

Put the `RadicalGoodSpeed.vim` file in your `~/.vim/colors/` folder.

If you use [dein](https://github.com/Shougo/dein.vim), add the following:

```vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('svjunic/RadicalGoodSpeed')

  call dein#end()
  call dein#save_state()
endif
```

if using toml
``` toml
[[plugins]]
repo = 'svjunic/RadicalGoodSpeed'
```

Next, add the following command to your `~/.vimrc`:

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

