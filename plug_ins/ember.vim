if exists('g:plug_loading_plugins')
  Plug 'dsawardekar/ember.vim'
  finish
endif

nnoremap <leader>ert :Eapp router.coffee<CR>
