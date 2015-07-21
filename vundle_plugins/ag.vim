" =============================================================================
" Plugin Name: ag.vim
" Description: balhbalhbalh
" URL: https://github.com/rking/ag.vim
" =============================================================================

" Don't use AG on Windows because of Silver Search difficulties
if !has('win32') && !has('win64')
  if exists('g:vundle_installing_plugins')
    Plugin 'rking/ag.vim'
    finish
  endif

  nnoremap <silent> <leader>as :AgFromSearch<CR>
  nnoremap <leader>ag :Ag<space>
endif
