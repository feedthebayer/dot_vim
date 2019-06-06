set background=light
highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name="zenfly"

hi MoreMsg gui=bold guifg=black guibg=NONE

" SYNTAX
hi MatchParen gui=NONE guifg=black guibg=#ff922b
hi Comment	  gui=bold,italic guifg=#4B4B4B guibg=NONE
hi Constant	  gui=NONE guifg=NONE guibg=NONE
hi String	    gui=NONE guifg=NONE guibg=NONE
hi Character  gui=NONE guifg=NONE guibg=NONE
hi Number 	  gui=NONE guifg=NONE guibg=NONE
hi Boolean	  gui=NONE guifg=NONE guibg=NONE
hi Float  	  gui=NONE guifg=NONE guibg=NONE

hi Special	  gui=NONE guifg=NONE guibg=NONE

hi Identifier	gui=NONE guifg=NONE guibg=NONE
hi Function	  gui=bold guifg=NONE guibg=NONE

hi Statement	gui=NONE guifg=NONE guibg=NONE
hi Conditional gui=NONE guifg=NONE guibg=NONE
hi Repeat	    gui=NONE guifg=NONE guibg=NONE
hi Label    	gui=NONE guifg=NONE guibg=NONE
hi Operator 	gui=NONE guifg=NONE guibg=NONE
hi Keyword  	gui=NONE guifg=NONE guibg=NONE
hi Exception	gui=NONE guifg=NONE guibg=NONE

hi PreProc	  gui=NONE guifg=NONE guibg=NONE
hi Type		    gui=NONE guifg=NONE guibg=NONE
hi Underlined	gui=underline guifg=NONE
hi Ignore	    gui=NONE guifg=NONE guibg=NONE
hi Error		  gui=NONE guifg=NONE guibg=NONE
hi Todo		    gui=NONE guifg=NONE guibg=NONE

hi xmlTagName gui=italic
hi jsClassProperty gui=bold
hi link htmlTagName xmlTagName
hi link xmlEndTag xmlTagName
hi htmlH1 gui=NONE guifg=NONE
hi xmlAttrib gui=italic guifg=#707b87
hi link tsxAttrib xmlAttrib

hi jsStorageClass gui=italic

hi link jsArrowFunction Function
hi link jsFuncParens Function
hi link jsParens Function
hi link jsReturn Function

" hi jsFuncCall gui=bold
hi jsVariableDef gui=bold

hi typescriptReserved gui=bold
hi typescriptType gui=bold

hi CssSelector gui=bold
hi link cssTagName CssSelector
hi link cssSelectorOp CssSelector
hi link cssPseudoClass CssSelector
hi link cssPseudoClassId CssSelector

hi graphqlType gui=bold
hi graphqlDirective gui=italic

hi GitGutterAdd guifg=green
hi GitGutterChange guifg=orange
hi GitGutterDelete guifg=red

hi diffRemoved guifg=red
hi diffAdded guifg=green
