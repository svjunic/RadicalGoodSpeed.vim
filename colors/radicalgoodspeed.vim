" Vim color file
" Maintaner: sv.junic(sv.junic@gmail.com)
" URL: http://sv.junic.jp
" Last Change: 25-Jun-2015.
" Version: 1.3
" Changelog: 0.1 - add many color
"            0.2 - change many color
"            0.3 - add setting for cterm
"            1.0 - upload on www.vim.org
"            1.1 - update TabLine settings
"            1.2 - add vim-indent-guides highlight
"            1.3 - color modified
"            1.4 - color modified
"            1.5 - changed color. statement, number, javascriptObjectLabel
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
"   16     249     #888a85
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
"   47     207     #fc24ff

set background=dark

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "radicalgoodspeed"

" Current Line
"set cursorline
hi clear CursorLine
hi CursorLine                   ctermbg=none   guibg=#000000


" Default Colors
hi Normal           ctermfg=251 ctermbg=none guibg=#111111 guifg=#f0f0f0
hi NonText          ctermfg=233 ctermbg=none guibg=#2c3032 guifg=#2c3032 gui=none cterm=none
hi Cursor           ctermfg=11  ctermbg=251  guibg=#babdb6
hi ICursor          ctermfg=247 ctermbg=251  guibg=#babdb6

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
hi WildMenu         ctermfg=254 ctermbg=233  guibg=#0e1416 guifg=#eeeeec
hi LineNr           ctermfg=239 ctermbg=0    guibg=#000000 guifg=#3f4b4d
hi SignColumn       ctermfg=221 ctermbg=0    guibg=#000000

" Snippet
hi SnippetTabstop   ctermbg=none

" Pmenu
hi Pmenu            ctermfg=234 ctermbg=15   guibg=#161616 guifg=#000000
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
"" I'm thinking now.
"hi Todo             ctermfg=82  ctermbg=196  guibg=#fe2626 guifg=#5ee710 gui=underline cterm=underline
hi Todo             ctermfg=82  ctermbg=0    guibg=#fe2626 guifg=#5ee710 gui=underline cterm=underline
hi SpecialKey       ctermfg=60                             guifg=#ef2929 gui=underline cterm=underline

" Diagnostic
hi DiagnosticError  ctermfg=197                            guibg=#ef2929
hi DiagnosticWarn   ctermfg=221                            guibg=#ffd700
hi DiagnosticInfo   ctermfg=45                             guibg=#00ccff
hi DiagnosticHint   ctermfg=214                            guibg=#fcaf3e
hi DiagnosticOk     ctermfg=154                            guibg=#8ae234

" Tabs
hi TabLine          ctermfg=251 ctermbg=59   guibg=#626262 guifg=#babdb6 gui=none cterm=none
hi TabLineFill      ctermfg=59  ctermbg=237  guibg=#696969 guifg=#626262 gui=underline cterm=underline
hi TabLineSel       ctermfg=255 ctermbg=164  guibg=#b30487 guifg=#ffffff gui=bold cterm=bold

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
hi Keyword          ctermfg=254              guifg=#eeeeec
hi Special          ctermfg=249              guifg=#888a85
hi Error            ctermfg=244              guifg=#eeeeec guibg=#cc0000
hi Operator         ctermfg=216              guifg=#f8a077               gui=none cterm=none

" PHP
hi phpRegionDelimiter             ctermfg=140             guifg=#ad7fa8
hi phpPropertySelector            ctermfg=249             guifg=#888a85
hi phpPropertySelectorInString    ctermfg=249             guifg=#888a85
hi phpOperator                    ctermfg=249             guifg=#888a85
hi phpArrayPair                   ctermfg=249             guifg=#888a85
hi phpAssignByRef                 ctermfg=249             guifg=#888a85
hi phpRelation                    ctermfg=249             guifg=#888a85
hi phpMemberSelector              ctermfg=249             guifg=#888a85
hi phpUnknownSelector             ctermfg=249             guifg=#888a85
hi phpVarSelector                 ctermfg=251             guifg=#babdb6
hi phpSemicolon                   ctermfg=249             guifg=#888a85 gui=none cterm=none
hi phpFunctions                   ctermfg=252             guifg=#d3d7cf
hi phpParent                      ctermfg=249             guifg=#888a85

" JavaScript
hi javaScriptBraces               ctermfg=199             guifg=#e7439c
hi javaScriptOperator             ctermfg=226             guifg=#fff847
hi javascriptObjectLabel          ctermfg=111             guifg=#7fa7f8
hi javascriptIdentifier           ctermfg=227             guifg=#fff96c
hi javascriptIdentifierName       ctermfg=15              guifg=#ffffff
" hi javascriptIdentifierName       ctermfg=198             guifg=#f0417b
hi javascriptGlobal               ctermfg=15              guifg=#ffffff
hi javascriptBoolean              ctermfg=119             guifg=#93f369
hi javascriptMethodName           ctermfg=198             guifg=#f0417b
hi javascriptObjectMethodName     ctermfg=198             guifg=#f0417b
hi javascriptFuncName             ctermfg=198             guifg=#f0417b

" Sass
hi sassClass        ctermfg=213              guifg=#ff88ee               gui=none cterm=none

" HTML
hi htmlTag                        ctermfg=249             guifg=#888a85
hi htmlEndTag                     ctermfg=249             guifg=#888a85
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
hi cssBraces                                ctermfg=249 guifg=#888a85
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

"nathanaelkane/vim-indent-guides
hi IndentGuidesOdd  ctermbg=236 guibg=#090909
hi IndentGuidesEven ctermbg=237 guibg=#000000

" for spell check function
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=220 gui=underline guifg=#f9d749


" LSP Hover window colors
hi LspFloatWinNormal ctermfg=251 ctermbg=234 guifg=#f0f0f0 guibg=#1a1a1a
hi LspFloatWinBorder ctermfg=240 guifg=#333333

" LSP Reference highlights
hi LspReferenceText ctermbg=236 guibg=#1e2426
hi LspReferenceRead ctermbg=236 guibg=#1e2426
hi LspReferenceWrite ctermbg=236 guibg=#1e2426

"" coc.nvim (may reduce maintenance)
hi CocFloating ctermbg=0 guibg=#000000
hi CocFloatThumb ctermbg=255 guibg=#ffffff
hi CocFloatSbar ctermbg=0 guibg=#000000
hi CocMenuSel ctermbg=237 guibg=#696969

" LSP Hover window colors
hi FloatBorder ctermfg=127                            guibg=#ffff00
hi NormalFloat ctermfg=15                             guibg=#ff00ff

" for hrsh7th/nvim-cmp
hi link CmpPmenu Pmenu
hi CmpItemAbbr           ctermbg=15   ctermfg=0   guibg=#ffffff guifg=#000000
hi CmpItemAbbrMatch      ctermbg=111 ctermfg=0 guibg=#7fa7f8 guifg=#000000 cterm=bold gui=bold
hi CmpItemAbbrMatchFuzzy ctermbg=111 ctermfg=0 guibg=#7fa7f8 guifg=#000000 cterm=bold gui=bold
hi CmpItemMenu           ctermbg=1   ctermfg=1 guibg=#ff0000 guifg=#ff0000
hi CmpItemKind           ctermbg=246 ctermfg=0 guibg=#666666 guifg=#000000
hi CmpDocumentation      ctermbg=0    ctermfg=15  guibg=#ffffff guifg=#000000
