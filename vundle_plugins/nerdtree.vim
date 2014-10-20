if exists('g:vundle_installing_plugins')
  Plugin 'scrooloose/nerdtree'
  finish
endif

nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
" Change working directory when changing NERD base directory
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif
