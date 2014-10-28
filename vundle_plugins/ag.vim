" =============================================================================
" Plugin Name: ag.vim
" Description: balhbalhbalh
" URL: https://github.com/rking/ag.vim
" =============================================================================

" Only use AG on Mac because of Silver Search difficulties on windows
if has('macunix') || has('mac')
  if exists('g:vundle_installing_plugins')
    Plugin 'rking/ag.vim'
    finish
  endif

  nnoremap <silent> <leader>as :AgFromSearch<CR>
  nnoremap <leader>ag :Ag<space>
endif
