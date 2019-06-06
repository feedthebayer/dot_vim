if exists('g:plug_loading_plugins')
  Plug 'tpope/vim-unimpaired'
  finish
endif

" Move a single line around
nmap <M-up> [e
nmap <M-down> ]e

" Move multiple visually selected lines round
vmap <M-up> [egv
vmap <M-down> ]egv

