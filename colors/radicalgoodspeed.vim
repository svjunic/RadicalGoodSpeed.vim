" Vim color file
" Maintaner: sv.junic(sv.junic@gmail.com)
" URL: http://sv.junic.jp
" Last Change: 2013 Aug 8
" Version: 0.2
" Changelog: 0.1 - add many color
"            0.2 - change many color

" ctermfg=0 ctermbg=0

set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "radicalgoodspeed"

" Current Line
set cursorline
hi clear CursorLine
hi CursorLine guibg=black ctermbg=black


" Default Colors
hi Normal   ctermfg=252 ctermbg=240 guifg=#f0f0f0 guibg=#1e2426
hi NonText  ctermfg=241 ctermbg=241 guifg=#2c3032 guibg=#2c3032 gui=none
hi Cursor   ctermfg=11  ctermbg=11  guibg=#babdb6
hi ICursor  ctermfg=247 ctermbg=247 guibg=#babdb6

" Search
hi Search       ctermfg=15 ctermbg=11  guifg=#2e3436 guibg=#fcaf3e
hi IncSearch    ctermfg=15 ctermbg=11  guibg=#2e3436 guifg=#fcaf3e

" Window Elements
hi StatusLine       ctermfg=254 ctermbg=233 guifg=#2e3436 guibg=#babdb6 gui=none
hi StatusLineNC     ctermfg=248 ctermbg=233 guifg=#2e3436 guibg=#888a85 gui=none
hi VertSplit        ctermfg=31  ctermbg=31  guifg=#555753 guibg=#888a85 gui=none
hi Visual                       ctermbg=13  guibg=#9529F4
hi MoreMsg          ctermfg=196 ctermbg=196 guifg=#729fcf
hi Question         ctermfg=155             guifg=#8ae234 gui=none
hi WildMenu         ctermfg=0   ctermbg=0 guifg=#eeeeec guibg=#0e1416
hi LineNr           ctermfg=239 ctermbg=0 guifg=#3f4b4d guibg=#000000

" syntasticのエラー出す部分
hi SignColumn   ctermbg=14 guibg=#000000

" Pmenu
hi Pmenu        ctermfg=255 ctermbg=33  guibg=#666666 guifg=#eeeeec
hi PmenuSel     ctermfg=255 ctermbg=111 guibg=#8cd0d3 guifg=#666666
hi PmenuSbar    ctermfg=0 ctermbg=255 guibg=#333333 ctermbg=4
hi PmenuThumb   ctermfg=0 ctermbg=255 guifg=#ffffff

" Diff
hi DiffDelete   ctermfg=125 ctermbg=000 guifg=#4D3800 guibg=#0e1416
hi DiffAdd      ctermfg=255 ctermbg=000 guibg=#1f2b2d
hi DiffChange   ctermfg=255 ctermbg=33  guibg=#003C70
hi DiffText     ctermfg=255 ctermbg=13  guibg=#b30487 gui=none

" ** todo ** 
" Folds
hi Folded       guifg=#d3d7cf guibg=#204a87
hi FoldColumn   guifg=#3465a4 guibg=#000000

" Specials
hi Title        guifg=#fcaf3e
hi Todo         guifg=#fcaf3e guibg=bg
hi SpecialKey   guifg=#ef2929 cterm=underline gui=underline

" Tabs
hi TabLine      guibg=#0a1012 guifg=#888a85
hi TabLineFill  guifg=#0a1012
hi TabLineSel   guibg=#555753 guifg=#eeeeec gui=none

" Matches
hi MatchParen   guifg=#2e3436 guibg=#fcaf3e

" Tree
hi Directory    guifg=#ffffff

" Syntax
hi Comment      guifg=#00ccff
hi Constant     guifg=#8ae234
hi Number       guifg=#8ae234
hi Statement    guifg=#ff88ee gui=none
hi Identifier   guifg=#ffd700
hi PreProc      guifg=#fcaf3e
hi Function     guifg=#fcaf3e
hi Type         guifg=#e3e7df gui=none
hi Keyword      guifg=#eeeeec
hi Special      guifg=#888a85
hi Error        guifg=#eeeeec guibg=#cc0000

" PHP
hi phpRegionDelimiter           guifg=#ad7fa8
hi phpPropertySelector          guifg=#888a85
hi phpPropertySelectorInString  guifg=#888a85
hi phpOperator                  guifg=#888a85
hi phpArrayPair                 guifg=#888a85
hi phpAssignByRef               guifg=#888a85
hi phpRelation                  guifg=#888a85
hi phpMemberSelector            guifg=#888a85
hi phpUnknownSelector           guifg=#888a85
hi phpVarSelector               guifg=#babdb6
hi phpSemicolon                 guifg=#888a85 gui=none
hi phpFunctions                 guifg=#d3d7cf
hi phpParent                    guifg=#888a85

" JavaScript
hi javaScriptBraces             guifg=#888a85
hi javaScriptOperator           guifg=#888a85

" HTML
hi htmlTag                      guifg=#888a85
hi htmlEndTag                   guifg=#888a85
hi htmlTagName                  guifg=#ffffff
hi htmlSpecialTagName           guifg=#babdb6
hi htmlArg                      guifg=#d3d7cf
hi htmlTitle                    guifg=#8ae234 gui=none
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
hi cssSelectorOp                        guifg=#eeeeec
hi link cssSelectorOp2 cssSelectorOp
hi cssUIProp                            guifg=#d3d7cf
hi link cssPagingProp cssUIProp
hi link cssGeneratedContentProp cssUIProp
hi link cssRenderProp cssUIProp
hi link cssBoxProp cssUIProp
hi link cssTextProp cssUIProp
hi link cssColorProp cssUIProp
hi link cssFontProp cssUIProp
hi cssPseudoClassId                     guifg=#eeeeec
hi cssBraces                            guifg=#888a85
hi cssIdentifier                        guifg=#fcaf3e
hi cssTagName                           guifg=#fcaf3e
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


"" gui
if has('win32')
	set transparency=240
elseif has('mac')
	set transparency=14
elseif has('xfontset')
	"set transparency=7
endif
