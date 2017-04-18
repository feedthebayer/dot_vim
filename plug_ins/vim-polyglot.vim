if exists('g:plug_loading_plugins')
  Plug 'sheerun/vim-polyglot'
  finish
endif

nnoremap <A-r> :RustRun<cr>
let g:rustfmt_fail_silently = 1

