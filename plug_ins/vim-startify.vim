if exists('g:plug_loading_plugins')
  Plug 'mhinz/vim-startify'
  finish
endif

let g:startify_list_order = [
        \ ['   Last modified'],
        \ 'dir',
        \ ['   Recent'],
        \ 'files',
        \ ]
let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ ]
let g:startify_files_number = 10
let g:startify_custom_indices = ['a', 'd', 'f', 'g', 'h']
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0

"Start faster
let g:startify_enable_unsafe = 0

hi StartifyBracket ctermfg=240
hi StartifyFooter  ctermfg=111
hi StartifyHeader  ctermfg=203
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240

" Show Startify and NERDTree on start
autocmd VimEnter *
            \ if !argc() |
            \   Startify |
            " \   NERDTree |
            \   execute "normal \<c-w>w" |
            \ endif
" Keep NERDTree from opening a split when startify is open
autocmd User Startified setlocal buftype=

let g:startify_recursive_dir = 1
