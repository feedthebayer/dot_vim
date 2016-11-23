if exists('g:plug_loading_plugins')
  Plug 'easymotion/vim-easymotion'
  finish
endif

" Disable default mappings
let g:EasyMotion_do_mapping = 0
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Require tpope/vim-repeat to enable dot repeat support
" `z<CR>` repeat last find motion.
nmap z <Plug>(easymotion-s)
