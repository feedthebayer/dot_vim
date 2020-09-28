
set background=light
highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name="blitz"

" -------------------------------------
" USE <leader>st to see highlight group
" -------------------------------------

let s:black           = { "gui": "#000000", "cterm": "232" }
let s:medium_gray     = { "gui": "#6c6c6c", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
let s:light_black     = { "gui": "#262626", "cterm": "235" }
let s:lighter_black   = { "gui": "#4E4E4E", "cterm": "239" }
let s:light_gray      = { "gui": "#898989", "cterm": "248" }
let s:lighter_gray    = { "gui": "#C6C6C6", "cterm": "251" }
let s:lightest_gray   = { "gui": "#EEEEEE", "cterm": "255" }
let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }
let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "32"   }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:dark_purple     = { "gui": "#6700eb", "cterm": "134" }
let s:light_purple    = { "gui": "#a790d5", "cterm": "140" }
let s:lighter_purple    = { "gui": "#C6B2E4", "cterm": "140" }
let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:light_yellow    = { "gui": "#ffff87", "cterm": "228"   }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }

let s:background = &background

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:lighter_black
  let s:bg_very_subtle  = s:subtle_black
  let s:norm            = s:lighter_gray
  let s:norm_subtle     = s:medium_gray
  let s:purple          = s:light_purple
  let s:cyan            = s:light_cyan
  let s:green           = s:light_green
  let s:red             = s:light_red
  let s:visual          = s:light_purple
  let s:yellow          = s:light_yellow
else
  let s:bg              = s:actual_white
  let s:bg_subtle       = s:light_gray
  let s:bg_very_subtle  = s:lightest_gray
  let s:norm            = s:light_black
  let s:norm_subtle     = s:medium_gray
  let s:purple          = s:dark_purple
  let s:cyan            = s:dark_cyan
  let s:green           = s:dark_green
  let s:red             = s:dark_red
  let s:visual          = s:lighter_purple
  let s:yellow          = s:dark_yellow
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"fg": s:norm})

call s:h("Cursor",        {"bg": s:purple, "fg": s:norm })
call s:h("Comment",       {"fg": s:bg_subtle, "gui": "italic"})

call s:h("Constant",      {"fg": s:purple})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

hi! link Identifier       Normal
hi! link Function         Identifier
hi! link jsonKeyword       Normal

call s:h("Statement",     {"fg": s:norm_subtle})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("Operator",      {"fg": s:norm, "cterm": "bold", "gui": "bold"})

call s:h("PreProc",     {"fg": s:norm_subtle})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:norm})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:norm_subtle, "gui": "italic"})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:actual_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:purple, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:dark_blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:light_black})
call s:h("Search",        {"bg": s:light_green, "fg": s:light_black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:purple, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
" call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"fg": s:norm, "bg": s:visual, "gui": "bold"})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark_yellow})
call s:h("DiffText",      {"fg": s:dark_blue})
" call s:h("SignColumn",    {"fg": s:light_green})


  " call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  " call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  " call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  " call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})

call s:h("Pmenu",         {"fg": s:norm, "bg": s:light_green})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:dark_green})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:purple, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

" call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:purple, "gui": "bold"})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:purple, "gui": "bold"})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:purple, "gui": "bold"})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:purple, "gui": "bold"})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:purple, "gui": "bold"})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:purple, "gui": "bold"})

" Synatastic
" call s:h("SyntasticWarningSign",    {"fg": s:yellow})
" call s:h("SyntasticWarning",        {"bg": s:yellow, "fg": s:black, "gui": "bold", "cterm": "bold"})
" call s:h("SyntasticErrorSign",      {"fg": s:red})
" call s:h("SyntasticError",          {"bg": s:red, "fg": s:white, "gui": "bold", "cterm": "bold"})
"
" " Neomake
" hi link NeomakeWarningSign	SyntasticWarningSign
" hi link NeomakeErrorSign	SyntasticErrorSign
"
" " ALE
" hi link ALEWarningSign	SyntasticWarningSign
" hi link ALEErrorSign	SyntasticErrorSign
"
" " Signify, git-gutter
" hi link SignifySignAdd              LineNr
" hi link SignifySignDelete           LineNr
" hi link SignifySignChange           LineNr
" hi link GitGutterAdd                LineNr
" hi link GitGutterDelete             LineNr
" hi link GitGutterChange             LineNr
" hi link GitGutterChangeDelete       LineNr


" -----------------------

" hi MoreMsg gui=bold guifg=black guibg=NONE

" SYNTAX
" hi MatchParen gui=NONE guifg=black guibg=#ff922b
call s:h("MatchParen",        {"bg": s:light_green, "fg": s:light_black})
" hi Comment	  gui=bold,italic guifg=#4B4B4B guibg=NONE
" hi Constant	  gui=NONE guifg=NONE guibg=NONE
" hi String	    gui=NONE guifg=NONE guibg=NONE
" hi Character  gui=NONE guifg=NONE guibg=NONE
" hi Number 	  gui=NONE guifg=NONE guibg=NONE
" hi Boolean	  gui=NONE guifg=NONE guibg=NONE
" hi Float  	  gui=NONE guifg=NONE guibg=NONE
"
" hi Special	  gui=NONE guifg=NONE guibg=NONE
"
" hi Identifier	gui=NONE guifg=NONE guibg=NONE
" hi Function	  gui=bold guifg=NONE guibg=NONE
"
" hi Statement	gui=NONE guifg=NONE guibg=NONE
" hi Conditional gui=NONE guifg=NONE guibg=NONE
" hi Repeat	    gui=NONE guifg=NONE guibg=NONE
" hi Label    	gui=NONE guifg=NONE guibg=NONE
" hi Operator 	gui=NONE guifg=NONE guibg=NONE
" hi Keyword  	gui=NONE guifg=NONE guibg=NONE
" hi Exception	gui=NONE guifg=NONE guibg=NONE
"
" hi PreProc	  gui=NONE guifg=NONE guibg=NONE
" hi Type		    gui=NONE guifg=NONE guibg=NONE
" hi Underlined	gui=underline guifg=NONE
" hi Ignore	    gui=NONE guifg=NONE guibg=NONE
" hi Error		  gui=NONE guifg=NONE guibg=NONE
hi Todo	      gui=bold,italic guifg=#ffffff guibg=#f03e3e
"
" hi Pmenu      guibg=#E9D8FD
"
hi xmlTagName gui=italic
hi jsClassProperty gui=bold
hi link htmlTagName xmlTagName
hi link xmlEndTag xmlTagName
hi htmlH1 gui=NONE guifg=NONE
hi xmlAttrib gui=italic guifg=#707b87
hi link tsxAttrib xmlAttrib

hi jsStorageClass gui=italic
" hi jsTemplateString guifg=#364fc7
" hi link typescriptTemplate jsTemplateString
" hi jsTemplateExpression gui=italic guifg=#364fc7
"
" hi link jsArrowFunction Function
" hi link jsFuncParens Function
" hi link jsParens Function
" hi link jsReturn Function
" hi link rubyClassBlock Function
" hi link rubyControl Function

hi jsVariableDef gui=bold guifg=#6700eb
hi link typescriptVariableDeclaration jsVariableDef

" hi jsImport gui=italic
" hi link typescriptImport jsImport
" hi jsExport gui=italic
" hi link typescriptExport jsExport

hi jsModuleKeyword guifg=#6700eb

hi typescriptReserved gui=bold
hi typescriptType gui=bold
hi typescriptInterfaceName guifg=#6700eb gui=italic,bold
hi link typescriptAliasDeclaration typescriptInterfaceName
hi typescriptTypeReference guifg=#6700eb gui=italic

hi typescriptIdentifierName guifg=#6700eb gui=bold
hi link typescriptClassName typescriptIdentifierName
hi link typescriptFuncName typescriptIdentifierName

" hi CssSelector gui=bold
" hi link cssTagName CssSelector
" hi link cssSelectorOp CssSelector
" hi link cssPseudoClass CssSelector
" hi link cssPseudoClassId CssSelector

" hi graphqlType gui=bold
" hi graphqlDirective gui=italic

hi SignColumn guibg=NONE
hi GitGutterAdd guifg=green
hi GitGutterChange guifg=orange
hi GitGutterDelete guifg=red

hi diffRemoved guifg=red
hi diffAdded guifg=green

hi link CocErrorHighlight ALEError
hi link CocWarningHighlight ALEWarning
hi link CocInfoHighlight ALEWarning

" hi CocWarningFloat guifg=#000000
" hi CocInfoFloat guifg=#000000

" hi rustStorage gui=italic
" hi rustRepeat gui=bold

