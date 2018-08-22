if exists('g:plug_loading_plugins')
  Plug 'sheerun/vim-polyglot'
  finish
endif

nnoremap <A-r> :RustRun<cr>
let g:rustfmt_fail_silently = 1

" let g:javascript_plugin_flow = 1
let g:polyglot_disabled = ['javascript', 'jsx']
