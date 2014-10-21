if exists('g:vundle_installing_plugins')
  Plugin 'bling/vim-airline'
  finish
endif

let g:airline_theme = 'jellybeans'
" Enable powerline fonts only on Mac
if has('win32') || has('win64')
  let g:airline_powerline_fonts = 0

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = ''
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = ''
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.whitespace = '•'
elseif has('gui_macvim')
  let g:airline_powerline_fonts = 1
endif
let g:airline_detect_modified = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_mode_map = {
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ 'c'  : 'CMD',
      \ '' : 'VB',
      \ }
" Show the current working directory folder name
let g:airline_section_b = '%{substitute(getcwd(), ".*\/", "", "g")}'
let g:airline_section_x = ''
let g:airline_section_y = '%{airline#util#wrap(airline#extensions#branch#get_head(),0)}'
let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#:%3'
let g:airline_section_z = '%3p%% %{substitute(line("."), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}|%{substitute(line("$"), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}'
