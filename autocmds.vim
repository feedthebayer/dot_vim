" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  augroup MyAutoCommands
    " Clear the auto command group so we don't define it multiple times
    " Idea from http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    autocmd!
    " No formatting on o key newlines
    autocmd BufNewFile,BufEnter * set formatoptions-=o

    " When editing a file, always jump to the last cursor position.
    " This must be after the uncompress commands.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line ("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

    " Fix trailing whitespace in all files
    autocmd BufWritePre * silent! :StripTrailingWhiteSpace

    " Help mode bindings
    " <enter> to follow tag, <bs> to go back, and q to quit.
    " From http://ctoomey.com/posts/an-incremental-approach-to-vim/
    autocmd filetype help nnoremap <buffer><cr> <c-]>
    autocmd filetype help nnoremap <buffer><bs> <c-T>
    autocmd filetype help nnoremap <buffer>q :q<CR>

    " Leave the return key alone when in command line windows, since it's used
    " to run commands there.
    autocmd! CmdwinEnter * :unmap <cr>
    autocmd! CmdwinLeave * :call MapCR()

    " Show normal line numbers when focused and when in insert mode
    " autocmd InsertEnter * :set norelativenumber
    " autocmd FocusLost * :set norelativenumber
    " Show relative numbers when not focused or in normal mode
    " autocmd InsertLeave * :set relativenumber
    " autocmd FocusGained * if &modifiable | :set relativenumber | endif

    " Automatically close terminal buffers that have ended
    " (no more [Process exited 0] !!)
    autocmd TermClose * call feedkeys('<cr>')

    " Automatically enter insert mode when switching to a terminal
    autocmd BufEnter term://* :start

    " Hide unneeded line highlight in terminals
    autocmd TermOpen * :set nocursorline

    " Close FZF if it loses focus
    autocmd BufLeave *#FZF :bd!

    " autocmd FileType javascript.jsx,javascript set formatprg=prettier-standard
    " autocmd BufWritePre *.js :normal gggqG
    " autocmd BufWritePre * Neoformat

    " Fix syntax highlighting in Vue files
    autocmd FileType vue syntax sync fromstart
  augroup END
endif
