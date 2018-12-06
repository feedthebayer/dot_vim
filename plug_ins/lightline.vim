if exists('g:plug_loading_plugins')
  Plug 'itchyny/lightline.vim'
  finish
endif

let g:lightline = {
      \ 'colorscheme': 'lightline_zenfly',
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
      \   'column': 'LightlineColumn',
      \ },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineColumn()
  return &bt == 'terminal' ? '' : printf('%-2d', col('.'))
endfunction

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


let s:colors = [ [ '#4CA630', '#ffffff', 0, 0, 'bold' ] ]
let s:inactivecolors = [ [ '#4CA630', '#ffffff', 0, 0] ]

let s:p = {'normal': {}, 'inactive': {}}
let s:p.normal.left = s:colors
let s:p.normal.right = s:colors
let s:p.normal.middle = s:colors
let s:p.inactive.left = s:inactivecolors
let s:p.inactive.right = s:inactivecolors
let s:p.inactive.middle = s:inactivecolors
" let s:p.normal.error = s:colors
" let s:p.normal.warning = s:colors

let g:lightline#colorscheme#lightline_zenfly#palette = s:p

