if exists('g:vundle_installing_plugins')
  Plugin 'nathanaelkane/vim-indent-guides'
  finish
endif

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0
let g:indent_guides_exclude_filetypes = ['nerdtree', 'bitbake']

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#073642 ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#002b36 ctermbg=8
