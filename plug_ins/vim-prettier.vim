if exists('g:plug_loading_plugins')
  Plug 'prettier/vim-prettier', { 'tag': '0.2.6',
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
  finish
endif

let g:prettier#config#semi = 'false'
let g:prettier#config#print_width = 95
