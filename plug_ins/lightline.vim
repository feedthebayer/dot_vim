if exists('g:plug_loading_plugins')
  Plug 'itchyny/lightline.vim'
  finish
endif

if (&background == "light")
  " let s:litheme = 'lightline_zenfly'
  let s:litheme = 'ayu_light_custom'
else
  let s:litheme = 'palenight'
endif

let g:lightline = {
      \ 'colorscheme': s:litheme,
      \ 'active': {
      \   'left': [ [ 'lineinfo', 'paste', 'filename' ], [], [] ],
      \   'right': [ [], [], [] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'filename' ], [], [] ],
      \   'right': [ [], [], [] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightlineModified',
      \   'readonly': 'LightlineReadonly',
      \   'filename': 'LightlineFilename',
      \ },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : ''
endfunction

function! LightlineReadonly()
  return &ft !~? 'vimfiler\|gundo' && &readonly ? '' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimshell' ? vimshell#get_status_string() :
        \  &ft == 'fzf' ? '' :
        \  &bt == 'terminal' ? '>_' :
        \ '' != expand('%:t') ? expand('%:f') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction


" let s:colors = [ [ '#212529', '#c5f6fa', 0, 0, 'bold' ] ]
" let s:inactivecolors = [ [ '#212529', '#c5f6fa', 0, 0] ]
"
" let s:p = {'normal': {}, 'inactive': {}}
" let s:p.normal.left = s:colors
" let s:p.normal.right = s:colors
" let s:p.normal.middle = s:colors
" let s:p.inactive.left = s:inactivecolors
" let s:p.inactive.right = s:inactivecolors
" let s:p.inactive.middle = s:inactivecolors
" " let s:p.normal.error = s:colors
" " let s:p.normal.warning = s:colors
"
" let g:lightline#colorscheme#lightline_zenfly#palette = s:p

" ------------------------------------

let s:base0 = '#5C6773'
let s:base1 = '#5C6773'
let s:base2 = '#828C99'
let s:base3 = '#5C6773'
let s:base00 = '#FFFFFF'
let s:base01 = '#FFFFFF'
let s:base02 = '#FAFAFA'
let s:base023 = '#FAFAFA'
let s:base03 = '#E6B673'
let s:yellow = '#E6B673'
let s:orange = '#FF7733'
let s:red = '#f07178'
let s:magenta = '#A37ACC'
let s:blue = '#59c2ff'
let s:cyan = s:blue
let s:green = '#86B300'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, "#6700eb" ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base2, s:base02 ] ]
let s:p.normal.right = [ [ s:base02, s:base0 ], [ s:base1, s:base01 ] ]
let s:p.inactive.left =  [ [ s:base1, s:base01 ], [ s:base3, s:base01 ] ]
let s:p.inactive.middle = [ [ s:base1, s:base023 ] ]
let s:p.inactive.right = [ [ s:base1, s:base01 ], [ s:base2, s:base02 ] ]
let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base023, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.tabline.tabsel = [ [ s:base02, s:base03 ] ]
let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
let s:p.tabline.middle = [ [ s:base2, s:base02 ] ]
let s:p.tabline.right = [ [ s:base2, s:base00 ] ]
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base023, s:yellow ] ]

let g:lightline#colorscheme#ayu_light_custom#palette = lightline#colorscheme#fill(s:p)
