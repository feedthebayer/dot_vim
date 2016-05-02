if exists('g:plug_loading_plugins')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  finish
endif

let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'down': '~10' }

" Leader Commands
nnoremap <c-p> :FzfFiles<CR>
nnoremap <leader>t :FzfTags<CR>
nnoremap <leader>b :FzfBuffers<CR>

function! s:fzf_statusline()
  highlight fzf1 ctermfg=1 ctermbg=8
  highlight fzf2 ctermfg=2 ctermbg=8
  highlight fzf3 ctermfg=7 ctermbg=8
  setlocal statusline=%#fzf2#
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

let g:fzf_commits_log_options = "--graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset %Cgreen(%cr)%C(yellow)%d%Creset%n%s'"

