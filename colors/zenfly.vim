set background=light
highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name="zenfly"

" -------------------------------------
" USE <leader>st to see highlight group
" -------------------------------------

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
hi Todo	      gui=bold,italic guifg=#ffffff guibg=#f03e3e

hi Pmenu      guibg=#E9D8FD

hi xmlTagName gui=italic
hi jsClassProperty gui=bold
hi link htmlTagName xmlTagName
hi link xmlEndTag xmlTagName
hi htmlH1 gui=NONE guifg=NONE
hi xmlAttrib gui=italic guifg=#707b87
hi link tsxAttrib xmlAttrib

hi jsStorageClass gui=italic
hi jsTemplateString guifg=#364fc7
hi link typescriptTemplate jsTemplateString
hi jsTemplateExpression gui=italic guifg=#364fc7

hi link jsArrowFunction Function
hi link jsFuncParens Function
hi link jsParens Function
hi link jsReturn Function
hi link rubyClassBlock Function
hi link rubyControl Function

" hi jsFuncCall gui=bold
hi jsVariableDef gui=bold guifg=#6700eb

hi jsImport gui=italic
hi link typescriptImport jsImport
hi jsExport gui=italic
hi link typescriptExport jsExport

" hi jsModuleKeyword guifg=#6700eb

hi typescriptReserved gui=bold
hi typescriptType gui=bold
hi link typescriptVariableDeclaration jsVariableDef
hi typescriptInterfaceName gui=italic,bold
hi link typescriptAliasDeclaration typescriptInterfaceName
hi typescriptTypeReference gui=italic

hi typescriptIdentifierName guifg=#6700eb gui=bold
hi link typescriptClassName typescriptIdentifierName
hi link typescriptFuncName typescriptIdentifierName

hi CssSelector gui=bold
hi link cssTagName CssSelector
hi link cssSelectorOp CssSelector
hi link cssPseudoClass CssSelector
hi link cssPseudoClassId CssSelector

hi graphqlType gui=bold
hi graphqlDirective gui=italic

hi SignColumn guibg=NONE
hi GitGutterAdd guifg=green
hi GitGutterChange guifg=orange
hi GitGutterDelete guifg=red

hi diffRemoved guifg=red
hi diffAdded guifg=green

hi rustStorage gui=italic
hi rustRepeat gui=bold


" NOTE - COC colors set in coc.vim so they have highest priority

