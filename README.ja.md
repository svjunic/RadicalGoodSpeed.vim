# RadicalGoodSpeed.vim

RadicalGoodSpeed.vim は Vim/Neovim 用カラースキームです。

Language: 日本語 | [English](README.md)

## Screenshot

### TypeScript

![TypeScript](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/ts.png)

このスクリーンショットは次の構成で撮影しています:
- nvim-treesitter/nvim-treesitter
- neovim/nvim-lspconfig
- hrsh7th/nvim-cmp
- hrsh7th/cmp-nvim-lsp

### HTML

![HTML](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/html.png)

### Python

![Python](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/py.png)

## Install

注意: `termguicolors` や `g:radicalgoodspeed_force_cterm` などのオプションは、**colorscheme 適用前**に設定してください。

### Manual install (Neovim / pack)

```sh
git clone https://github.com/svjunic/RadicalGoodSpeed.vim.git \
  ~/.config/nvim/pack/colors/start/RadicalGoodSpeed.vim
```

Example `init.lua`:

```lua
vim.o.termguicolors = true
-- vim.g.radicalgoodspeed_force_cterm = 1 -- colorscheme 適用前に設定
-- truecolor 非対応（例: 256色）や、:set notermguicolors を使う環境で cterm ハイライトに強制したい場合に使います。

vim.cmd.colorscheme("radicalgoodspeed")
```

### dein

```vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('svjunic/RadicalGoodSpeed.vim')

  call dein#end()
  call dein#save_state()
endif
```

toml の場合:

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
      -- colorscheme 適用前に設定
      vim.o.termguicolors = true
      -- vim.g.radicalgoodspeed_force_cterm = 1 -- colorscheme 適用前に設定
      -- truecolor 非対応（例: 256色）や、:set notermguicolors を使う環境で cterm ハイライトに強制したい場合に使います。
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

true color 非対応の端末や、Neovimでも cterm ハイライトを強制したい場合は、次を **colorscheme 適用前**に設定します:

```vim
let g:radicalgoodspeed_force_cterm = 1
```

その後、いつも通り適用します:

```vim
colorscheme radicalgoodspeed
```

## Internal structure (Vim / Neovim)

このリポジトリは `colors/radicalgoodspeed.vim` を唯一のエントリポイントとして扱います。

- Vim: `autoload/radicalgoodspeed/vim.vim` から最小のレガシー実装を読み込みます。
- Neovim: `lua/radicalgoodspeed/init.lua` から Lua 実装を読み込みます。

Neovim 側のコードは、将来の拡張をしやすいように整理されています:

```
lua/radicalgoodspeed/
  palette.lua        -- 色データのみ（副作用なし）
  groups.lua         -- 基本の highlight group
  ts.lua             -- Tree-sitter の @... link
  lsp.lua            -- LSP / semantic tokens の @lsp... link
  integrations/
    telescope.lua
    cmp.lua
    gitsigns.lua
  init.lua            -- 全体のオーケストレーション
```

integrations 配下のモジュールは安全にロードできます（`pcall(require, ...)` を使い、プラグインが未導入なら何もしません）。
