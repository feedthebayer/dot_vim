if exists('g:plug_loading_plugins')
  Plug 'tomtom/tcomment_vim'
  finish
endif

let g:tcomment_mapleader1 = ''
let g:tcomment_mapleader2 = ''
let g:tcomment_opleader1 = 'tc'
nnoremap <silent><leader>cc :TComment<CR>
vnoremap <silent><leader>cc :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>

" Use '//' for C comments instead of '/* .. */'
call tcomment#type#Define('c', '// %s')
call tcomment#type#Define('ts', '// %s')
