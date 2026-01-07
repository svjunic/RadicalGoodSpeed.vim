" Vim color file
" Maintainer: sv.junic(sv.junic@gmail.com) URL: http://sv.junic.jp
" Last Change: 2025/12/24
" Version: 1.6
" Changelog: 0.1 - add many color
"            0.2 - change many color
"            0.3 - add setting for cterm
"            1.0 - upload on www.vim.org
"            1.1 - update TabLine settings
"            1.2 - add vim-indent-guides highlight
"            1.3 - color modified
"            1.4 - color modified
"            1.5 - changed color. statement, number, javascriptObjectLabel
"            1.6 - fix typos in header and deduplicate color entries
"
" Colors:
"   type   cterm   gui
"   1      0       #000000
"   2      17      #003C70
"   3      45      #00ccff
"   4      16      #0a1012
"   5      233     #0e1416
"   6      234     #111111
"   7      236     #1e2426
"   8      238     #1f2b2d
"   9      18      #204a87
"   10     238     #2c3032
"   11     239     #2e3436
"   12     240     #333333
"   13     244     #555753
"   14     246     #666666
"   15     75      #729fcf
"   16     249     #a3a3a3
"   17     154     #8ae234
"   18     116     #8cd0d3
"   19     129     #9529F4
"   20     140     #ad7fa8
"   21     164     #b30487
"   22     251     #babdb6
"   23     252     #d3d7cf
"   24     253     #e3e7df
"   25     254     #eeeeec
"   26     197     #ef2929
"   27     214     #fcaf3e
"   28     213     #ff88ee
"   29     221     #ffd700
"   30     255     #ffffff
"   31     59      #626262
"   32     237     #696969
"   33     177     #bd7ae0
"   34     216     #f8a077
"   35     135     #ae5ff2
"   36     161     #dc2677
"   37     106     #99bb26
"   38     220     #f9d749
"   39     111     #7fa7f8
"   40     119     #93f369
"   41     15      #ffffff
"   42     199     #e7439c
"   43     226     #fff847
"   44     198     #f0417b
"   45     234     #161616
"   46     207     #fc24ff

set background=dark

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "radicalgoodspeed"

" ------------------------------------------------------------
" Neovim / Vim branching
" ------------------------------------------------------------
if has('nvim')
  " Force cterm fallback when requested.
  if get(g:, 'radicalgoodspeed_force_cterm', 0)
    if exists('+termguicolors')
      set notermguicolors
    endif
  else
    lua require('radicalgoodspeed').load()
    finish
  endif
endif

runtime! autoload/radicalgoodspeed/vim.vim
call radicalgoodspeed#vim#load()
