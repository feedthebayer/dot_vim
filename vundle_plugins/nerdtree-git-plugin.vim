" Only use on Mac because of incompatability with vim-signify on windows
if has('gui_macvim')
  if exists('g:vundle_installing_plugins')
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    finish
  endif
endif
