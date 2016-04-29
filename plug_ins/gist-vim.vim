if exists('g:plug_loading_plugins')
  Plug 'mattn/gist-vim'
  finish
endif

if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
