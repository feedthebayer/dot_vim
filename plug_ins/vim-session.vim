if exists('g:plug_loading_plugins')
  Plug 'xolox/vim-session'
  finish
endif

let g:session_autosave = 0
let g:session_autoload = 0
nnoremap <leader>os :OpenSession<CR>
nnoremap <leader>ss :SaveSession<CR>
