" Vim color file
" Maintainer: sv.junic(sv.junic@gmail.com) URL: http://sv.junic.jp
" Last Change: 2025/12/24
" Version: 2.0
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
"            2.0 - separate Neovim and Vim handling

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
