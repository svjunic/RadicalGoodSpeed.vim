# RadicalGoodSpeed.vim

*RadicalGoodSpeed.vim* is a high-contrast Vim color scheme.

## Screenshot

### es6

![es6](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/es6.png)

This capture uses the following Javascript syntax:  
 - https://github.com/othree/yajs.vim  
 - https://github.com/othree/es.next.syntax.vim  

Please bundling.


### html/css

![html-css](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/html-css.png)


### ruby

![es6](https://raw.githubusercontent.com/wiki/svjunic/RadicalGoodSpeed.vim/readme/img/rb.png)

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

