" ----------------------------------------
" Plug
" ----------------------------------------

" If vim-plug not installed, automatically install it!
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
let g:plug_loading_plugins = 1

for file in split(glob('$HOME/.vim/plug_ins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor

for file in split(glob('$HOME/.vim/plug_ins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor

unlet g:plug_loading_plugins
call plug#end()

