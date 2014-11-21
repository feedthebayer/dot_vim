if exists('g:vundle_installing_plugins')
  Plugin 'altercation/vim-colors-solarized'
  finish
endif

" Fix gutter coloring on Windows
if has('win32') || has('win64')
   highlight SignColumn guibg=#073642
endif
