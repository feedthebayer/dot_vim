if exists('g:plug_loading_plugins')
  Plug 'altercation/vim-colors-solarized'
  finish
endif

" Fix gutter coloring
highlight SignColumn ctermbg=black guibg=#073642
