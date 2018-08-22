set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="zenfly"

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

" guifg=#007B5B
hi xmlTagName gui=italic
hi jsClassProperty gui=bold
hi link htmlTagName xmlTagName
hi link xmlEndTag xmlTagName
hi htmlH1 gui=NONE guifg=NONE
hi xmlAttrib gui=italic guifg=#707b87

hi jsStorageClass gui=italic

hi link jsArrowFunction Function
hi link jsFuncParens Function
hi link jsParens Function
hi link jsReturn Function

" hi jsFuncCall gui=bold
hi jsVariableDef gui=bold

hi CssSelector gui=bold
hi link cssTagName CssSelector
hi link cssSelectorOp CssSelector
hi link cssPseudoClass CssSelector
hi link cssPseudoClassId CssSelector

hi diffRemoved guifg=red
hi diffAdded guifg=green
