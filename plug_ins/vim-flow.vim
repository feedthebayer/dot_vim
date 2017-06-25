if exists('g:plug_loading_plugins')
  Plug 'flowtype/vim-flow'
  finish
endif

let g:flow#autoclose = 1
let g:flow#flowpath = "./node_modules/.bin/flow"


