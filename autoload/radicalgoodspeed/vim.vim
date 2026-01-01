" Vim legacy implementation for RadicalGoodSpeed
" This file is loaded only on Vim (non-Neovim).

if exists('g:autoloaded_radicalgoodspeed_vim')
  finish
endif
let g:autoloaded_radicalgoodspeed_vim = 1

function! radicalgoodspeed#vim#load() abort
  " Current Line
  "set cursorline
  hi clear CursorLine
  hi CursorLine                   ctermbg=none   guibg=#000000

  " Default Colors
  hi Normal           ctermfg=251 ctermbg=none guibg=none    guifg=#c6c6c6
  hi NonText          ctermfg=233 ctermbg=none guibg=none    guifg=#121212 gui=none cterm=none
  hi Cursor           ctermfg=11  ctermbg=251  guibg=#c6c6c6
  hi ICursor          ctermfg=247 ctermbg=251  guibg=#c6c6c6

  " Search
  hi Search           ctermfg=239 ctermbg=214  guibg=#fcaf3e guifg=#2e3436
  hi IncSearch        ctermfg=214 ctermbg=239  guibg=#2e3436 guifg=#fcaf3e

  " Window Elements
  hi StatusLine       ctermfg=239 ctermbg=251  guibg=#babdb6 guifg=#2e3436 gui=none cterm=none
  hi StatusLineNC     ctermfg=239 ctermbg=249  guibg=#888a85 guifg=#2e3436 gui=none cterm=none
  hi VertSplit        ctermfg=244 ctermbg=249  guibg=#888a85 guifg=#555753 gui=none cterm=none
  hi Visual                       ctermbg=129  guibg=#9529F4
  hi MoreMsg          ctermfg=75                             guifg=#729fcf
  hi Question         ctermfg=154                            guifg=#8ae234 gui=none cterm=none
  hi WildMenu         ctermfg=254 ctermbg=233  guibg=#121212 guifg=#e4e4e4
  hi LineNr           ctermfg=239 ctermbg=0    guibg=#000000 guifg=#4e4e4e
  hi SignColumn       ctermfg=221 ctermbg=0    guibg=#000000

  " Snippet
  hi SnippetTabstop   ctermbg=none

  " Pmenu
  hi Pmenu            ctermfg=234 ctermbg=15   guibg=#161616 guifg=#ffffff
  hi PmenuSel         ctermfg=214 ctermbg=234  guibg=#161616 guifg=#fcaf3e
  hi PmenuSbar                    ctermbg=240  guibg=#333333
  hi PmenuThumb       ctermfg=255 ctermbg=255                guifg=#ffffff

  " Diff
  hi DiffDelete       ctermfg=125 ctermbg=233  guibg=#0e1416 guifg=#4D3800
  hi DiffAdd          ctermfg=255 ctermbg=238  guibg=#1f2b2d
  hi DiffChange       ctermfg=255 ctermbg=17   guibg=#003C70
  hi DiffText         ctermfg=255 ctermbg=164  guibg=#b30487               gui=none cterm=none

  " Folds
  hi Folded           ctermfg=135 ctermbg=0    guibg=#ae5ff2 guifg=#000000
  hi FoldColumn                   ctermbg=0    guibg=#000000 guifg=#3465a4

  " Specials
  hi Title            ctermfg=214                           guifg=#fcaf3e
  hi Todo             ctermfg=82  ctermbg=0    guibg=#fe2626 guifg=#5ee710 gui=underline cterm=underline
  hi SpecialKey       ctermfg=60                             guifg=#ef2929 gui=underline cterm=underline

  " Diagnostic (Vim では存在しない場合もあるが、group 定義自体は無害)
  hi DiagnosticError  ctermfg=197                            guibg=#ef2929
  hi DiagnosticWarn   ctermfg=221                            guibg=#ffd700
  hi DiagnosticInfo   ctermfg=45                             guibg=#00ccff
  hi DiagnosticHint   ctermfg=214                            guibg=#fcaf3e
  hi DiagnosticOk     ctermfg=154                            guibg=#8ae234

  " Tabs
  hi TabLine          ctermfg=251 ctermbg=59   guibg=#5f5f5f guifg=#c6c6c6 gui=none cterm=none
  hi TabLineFill      ctermfg=59  ctermbg=237  guibg=#3a3a3a guifg=#5f5f5f gui=underline cterm=underline
  hi TabLineSel       ctermfg=255 ctermbg=164  guibg=#d70087 guifg=#eeeeee gui=bold cterm=bold

  " Matches
  hi MatchParen       cterm=italic,bold gui=italic,bold

  " Tree
  hi Directory        ctermfg=255              guifg=#ffffff

  " Syntax
  hi Comment          ctermfg=45               guifg=#00ccff
  hi Constant         ctermfg=154              guifg=#8ae234
  hi Number           ctermfg=154              guifg=#8ae234
  hi Statement        ctermfg=213              guifg=#ff88ee               gui=none cterm=none
  hi Identifier       ctermfg=221              guifg=#ffd700               gui=none cterm=none
  hi PreProc          ctermfg=214              guifg=#fcaf3e
  hi Function         ctermfg=177              guifg=#bd7ae0
  hi Type             ctermfg=253              guifg=#e3e7df               gui=none cterm=none
  hi Underlined       ctermfg=81               guifg=#00c0ff
  hi Keyword          ctermfg=254              guifg=#eeeeec
  hi Special          ctermfg=249              guifg=#a3a3a3
  hi Error            ctermfg=244              guifg=#eeeeec guibg=#cc0000
  hi Operator         ctermfg=216              guifg=#f8a077               gui=none cterm=none
  hi Delimiter        ctermfg=252              guifg=#d3d7cf

  " PHP
  hi phpRegionDelimiter             ctermfg=140             guifg=#ad7fa8
  hi phpPropertySelector            ctermfg=249             guifg=#a3a3a3
  hi phpPropertySelectorInString    ctermfg=249             guifg=#a3a3a3
  hi phpOperator                    ctermfg=249             guifg=#a3a3a3
  hi phpArrayPair                   ctermfg=249             guifg=#a3a3a3
  hi phpAssignByRef                 ctermfg=249             guifg=#a3a3a3
  hi phpRelation                    ctermfg=249             guifg=#a3a3a3
  hi phpMemberSelector              ctermfg=249             guifg=#a3a3a3
  hi phpUnknownSelector             ctermfg=249             guifg=#a3a3a3
  hi phpVarSelector                 ctermfg=251             guifg=#babdb6
  hi phpSemicolon                   ctermfg=249             guifg=#a3a3a3 gui=none cterm=none
  hi phpFunctions                   ctermfg=252             guifg=#d3d7cf
  hi phpParent                      ctermfg=249             guifg=#a3a3a3

  " JavaScript
  hi javaScriptBraces               ctermfg=199             guifg=#e7439c
  hi javaScriptOperator             ctermfg=226             guifg=#fff847
  hi javascriptObjectLabel          ctermfg=111             guifg=#7fa7f8
  hi javascriptIdentifier           ctermfg=227             guifg=#fff96c
  hi javascriptIdentifierName       ctermfg=15              guifg=#ffffff
  hi javascriptGlobal               ctermfg=15              guifg=#ffffff
  hi javascriptBoolean              ctermfg=119             guifg=#93f369
  hi javascriptMethodName           ctermfg=198             guifg=#f0417b
  hi javascriptObjectMethodName     ctermfg=198             guifg=#f0417b
  hi javascriptFuncName             ctermfg=198             guifg=#f0417b

  " Sass
  hi sassClass        ctermfg=213              guifg=#ff88ee               gui=none cterm=none

  " HTML
  hi htmlTag                        ctermfg=249             guifg=#a3a3a3
  hi htmlEndTag                     ctermfg=249             guifg=#a3a3a3
  hi htmlTagName                    ctermfg=255             guifg=#ffffff
  hi htmlSpecialTagName             ctermfg=251             guifg=#babdb6
  hi htmlArg                        ctermfg=252             guifg=#d3d7cf
  hi htmlTitle                      ctermfg=154             guifg=#8ae234 gui=none cterm=none
  hi link htmlH1 htmlTitle
  hi link htmlH2 htmlH1
  hi link htmlH3 htmlH1
  hi link htmlH4 htmlH1
  hi link htmlH5 htmlH1
  hi link htmlH6 htmlH1

  " XML
  hi link xmlTag htmlTag
  hi link xmlEndTag htmlEndTag
  hi link xmlAttrib htmlArg

  " CSS
  hi cssSelectorOp                           ctermfg=254 guifg=#eeeeec
  hi link cssSelectorOp2 cssSelectorOp
  hi cssUIProp                               ctermfg=252 guifg=#d3d7cf
  hi link cssPagingProp cssUIProp
  hi link cssGeneratedContentProp cssUIProp
  hi link cssRenderProp cssUIProp
  hi link cssBoxProp cssUIProp
  hi link cssTextProp cssUIProp
  hi link cssColorProp cssUIProp
  hi link cssFontProp cssUIProp
  hi cssPseudoClassId                         ctermfg=254 guifg=#eeeeec
  hi cssBraces                                ctermfg=249 guifg=#a3a3a3
  hi cssIdentifier                            ctermfg=214 guifg=#fcaf3e
  hi cssTagName                               ctermfg=214 guifg=#fcaf3e
  hi link cssInclude Function
  hi link cssCommonAttr Constant
  hi link cssUIAttr Constant
  hi link cssTableAttr Constant
  hi link cssPagingAttr Constant
  hi link cssGeneratedContentAttr Constant
  hi link cssAuralAttr Constant
  hi link cssRenderAttr Constant
  hi link cssBoxAttr Constant
  hi link cssTextAttr Constant
  hi link cssColorAttr Constant
  hi link cssFontAttr Constant

  " nathanaelkane/vim-indent-guides
  hi IndentGuidesOdd  ctermbg=236 guibg=#303030
  hi IndentGuidesEven ctermbg=237 guibg=#3a3a3a

  " for spell check function
  hi clear SpellBad
  hi SpellBad cterm=underline ctermfg=220 gui=underline guifg=#ffd700
endfunction
