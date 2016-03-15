" ----------------------------------------
" Plug
" ----------------------------------------

call plug#begin('~/.vim/plugged')

let g:plug_installing_plugins = 1
for file in split(glob('$HOME/.vim/plug_plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
for file in split(glob('$HOME/.vim/plug_plugins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:plug_installing_plugins

call plug#end()

