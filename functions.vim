" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Strip Trailing White Space
" ---------------
" From http://vimbits.com/bits/377
" Preserves/Saves the state, executes a command, and returns to the saved state
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

function! StripTrailingWhiteSpaceAndSave()
  :call Preserve("%s/\\s\\+$//e")<CR>
  :write
endfunction

command! StripTrailingWhiteSpaceAndSave :call StripTrailingWhiteSpaceAndSave()<CR>
nnoremap <silent> <leader>stw :silent! StripTrailingWhiteSpaceAndSave<CR>

" ---------------
" Write Buffer if Necessary
"
" Writes the current buffer if it's needed, unless we're the in QuickFix mode.
" ---------------
function! WriteBufferIfNecessary()
  if &modified && !&readonly
    :write
  endif
endfunction
command! WriteBufferIfNecessary call WriteBufferIfNecessary()

function! CRWriteIfNecessary()
  if &filetype == "qf"
    " Execute a normal enter when in Quickfix list (for opening files)
    execute "normal! \<enter>"
  else
    WriteBufferIfNecessary
  endif
endfunction

" Idea for MapCR from http://git.io/pt8kjA
function! MapCR()
  nnoremap <silent> <enter> :call CRWriteIfNecessary()<CR>
endfunction
call MapCR()

" ---------------
" Make a scratch buffer with all of the leader keybindings.
"
" Adapted from http://ctoomey.com/posts/an-incremental-approach-to-vim/
" ---------------
function! ListLeaders()
  silent! redir @b
  silent! nmap <LEADER>
  silent! redir END
  silent! new
  silent! set buftype=nofile
  silent! set bufhidden=hide
  silent! setlocal noswapfile
  silent! put! b
  silent! g/^s*$/d
  silent! %s/^.*,//
  silent! normal ggVg
  silent! sort
  silent! let lines = getline(1,"$")
  silent! normal <esc>
endfunction

command! ListLeaders :call ListLeaders()


" ---------------
" Sort attributes inside <> in html.
" E.g.
" <div
"   b="1"
"   a="1"
"   c="1"
" />
"
" becomes
"
" <div
"   a="1"
"   b="1"
"   c="1"
" />
" ---------------
function! SortAttributes()
  normal vi>kojV
  :'<,'>sort
endfunction

command! SortAttributes call SortAttributes()
nnoremap <silent> <leader>sa :SortAttributes<CR>

" ---------------
" Sort values inside a curl block
" E.g.
" {
"   c: 1,
"   a: 1,
"   b: 1,
" }
"
" becomes
"
" {
"   a: 1,
"   b: 1,
"   c: 1,
" }
" ---------------
function! SortBlock()
  normal vi}jV
  :'<,'>sort
endfunction

command! SortBlock call SortBlock()
nnoremap <silent> <leader>sb :SortBlock<CR>

