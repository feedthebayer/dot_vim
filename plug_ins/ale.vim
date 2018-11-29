if exists('g:plug_loading_plugins')
  Plug 'w0rp/ale'
  finish
endif

let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 0
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
let g:ale_sign_error = '🔺  '
let g:ale_sign_warning = '🔸  '

hi ALEErrorSign   gui=NONE guifg=#c92a2a guibg=NONE
hi ALEWarningSign gui=NONE guifg=#e67700 guibg=NONE

let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
let g:ale_linters['markdown'] = []

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['markdown'] = ['prettier']

let g:ale_javascript_prettier_executable = 'prettier_d'
let g:ale_javascript_prettier_use_global = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_javascript_prettier_options = '--no-semi --print-width 100 --trailing-comma es5'

let g:ale_javascript_eslint_executable = 'eslint_d'

