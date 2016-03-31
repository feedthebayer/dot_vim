if exists('g:vundle_installing_plugins')
  Plugin 'altercation/vim-colors-solarized'
  finish
endif

" Fix gutter coloring
highlight SignColumn ctermbg=black guibg=#073642
