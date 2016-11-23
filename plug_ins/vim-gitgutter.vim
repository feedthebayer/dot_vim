if exists('g:plug_loading_plugins')
  Plug 'airblade/vim-gitgutter'
  finish
endif

let g:gitgutter_override_sign_column_highlight = 1
set updatetime=250
