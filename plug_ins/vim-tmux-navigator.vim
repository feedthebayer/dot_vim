if exists('g:plug_loading_plugins')
  Plug 'christoomey/vim-tmux-navigator'
  finish
endif

let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>

if has('nvim')
  " Terminal mappings
  tnoremap <silent> <M-h> <c-\><c-n>:TmuxNavigateLeft<cr>
  tnoremap <silent> <M-j> <c-\><c-n>:TmuxNavigateDown<cr>
  tnoremap <silent> <M-k> <c-\><c-n>:TmuxNavigateUp<cr>
  tnoremap <silent> <M-l> <c-\><c-n>:TmuxNavigateRight<cr>
end
