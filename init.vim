" =============================================================================
" Who: Brandon Bayer (@flybayer)
" Description: Simple, Beautiful, and Screaming Fast Vim Config
" Version: 5.0 - Major clean up and rework!
" =============================================================================
"
" All of the Plug plugins are loaded with Plug from this file.
source ~/.vim/plug.vim

" Platform (Windows, Mac, etc.) configuration.
source ~/.vim/platforms.vim
" All of the Vim configuration.
source ~/.vim/config.vim
" All hotkeys, not dependant on plugins, are mapped here.
source ~/.vim/mappings.vim
" Load plugin-specific configuration.
source ~/.vim/plugins.vim
" Small custom functions.
source ~/.vim/functions.vim
" Auto commands.
source ~/.vim/autocmds.vim

" Source custom local config files last to ensure they override previous settings
for file in split(glob('$HOME/.vim/plug_ins/custom/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor

