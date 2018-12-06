if exists('g:plug_loading_plugins')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  finish
endif

" inoremap <silent><expr> <TAB> "\<C-n>"

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ deoplete#mappings#manual_complete()
" function! s:check_back_space() abort "{{{
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}

" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
"   return deoplete#close_popup()
" endfunction

" let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete_delay', 200)
call deoplete#custom#option('auto_refresh_delay', 200)

" if !exists('g:neoinclude#reverse_exprs')
"   let g:neoinclude#reverse_exprs = {}
" endif
" let g:neoinclude#reverse_exprs.javascript =
"       \ 'fnamemodify(substitute(v:fname, "\.js$", "", ""), ":r")'

