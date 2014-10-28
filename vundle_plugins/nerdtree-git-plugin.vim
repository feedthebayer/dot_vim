" Only use on Mac because of incompatability with vim-signify on windows
if has('macunix') || has('mac')
  if exists('g:vundle_installing_plugins')
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    finish
  endif
endif
