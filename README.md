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

