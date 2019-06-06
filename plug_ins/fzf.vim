if exists('g:plug_loading_plugins')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  finish
endif

let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'window': '15split enew' }

" Leader Commands
nnoremap <c-p> :FzfFiles<CR>
nnoremap <leader>t :FzfTags<CR>
nnoremap <leader>b :FzfBuffers<CR>
nnoremap <leader>h :FzfHistory<CR>

function! s:fzf_statusline()
   highlight fzf1 guifg=#000000 guibg=NONE
   highlight fzf2 guifg=#000000 guibg=NONE
   highlight fzf3 guifg=#000000 guibg=NONE
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
  " setlocal statusline=%#fzf2#
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Search'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Title'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_commits_log_options = "--graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset %Cgreen(%cr)%C(yellow)%d%Creset%n%s'"
