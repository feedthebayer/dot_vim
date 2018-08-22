" ----------------------------------------
" Mappings
" ----------------------------------------

" Set leader to <space>
" Note: This line MUST come before any <leader> mappings
let mapleader=" "
let maplocalleader = ","

" -----------------------
" Unmapped While Learning
" -----------------------

" Arrow keys while learning hjkl
noremap <Up>    <nop>
noremap <Down>  <nop>
noremap <Left>  <nop>
noremap <Right> <nop>

" No-op ^ and $ while learning H and L
" noremap ^ <nop>
" noremap $ <nop>

" ---------------
" Regular Mappings
" ---------------

" Open help in a vetical split
cnoreabbrev h vert bo help

" Get (yank) entire buffer with gy
nnoremap yyy :0,$ y<cr>

" Visually select entire buffer
nnoremap vy ggVG

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" Don't move on *
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" Use TAB for jump to match
nnoremap <tab> %
vnoremap <tab> %

" Navigate by display line instead of file line
nnoremap <silent> j gj
nnoremap <silent> k gk

nnoremap <silent> [[ :lprev<cr>
nnoremap <silent> ]] :lnext<cr>

" ---------------
" Window Movement
" ---------------

" Switch windows
nnoremap <silent> <A-h> :WriteBufferIfNecessary<CR>:wincmd h<CR>
nnoremap <silent> <A-j> :WriteBufferIfNecessary<CR>:wincmd j<CR>
nnoremap <silent> <A-k> :WriteBufferIfNecessary<CR>:wincmd k<CR>
nnoremap <silent> <A-l> :WriteBufferIfNecessary<CR>:wincmd l<CR>

tnoremap <silent> <A-h> <c-\><c-n>:wincmd h<CR>
tnoremap <silent> <A-j> <c-\><c-n>:wincmd j<CR>
tnoremap <silent> <A-k> <c-\><c-n>:wincmd k<CR>
tnoremap <silent> <A-l> <c-\><c-n>:wincmd l<CR>

" Resize windows
nnoremap <silent> <A-Right> :wincmd ><CR>
nnoremap <silent> <A-Left> :wincmd <<CR>
nnoremap <silent> <A-Up> :wincmd +<CR>
nnoremap <silent> <A-Down> :wincmd -<CR>

tnoremap <silent> <A-Right> <c-\><c-n>:wincmd ><CR>i
tnoremap <silent> <A-Left> <c-\><c-n>:wincmd <<CR>i
tnoremap <silent> <A-Up> <c-\><c-n>:wincmd +<CR>i
tnoremap <silent> <A-Down> <c-\><c-n>:wincmd -<CR>i


" Previous Window
nnoremap <silent> gp :wincmd p<CR>
" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" Easily exit insert mode when in terminal
tnoremap <c-n> <c-\><c-n>

" ---------------
" Modifer Mappings
" ---------------

" Scroll larger amounts with C-j / C-k
nnoremap <C-j> 12gj
nnoremap <C-k> 12gk

" ---------------
" Insert Mode Mappings
" ---------------

" NOTE - I remap my keyboard control key to trigger ESC when not combined with  another key

" ---------------
" Command Line Mode Mappings
" ---------------
cnoremap <C-a> <Home>
cnoremap <expr> <C-k> mappings#clear_line_after_cursor()
cnoremap <expr> <Esc> "\<C-c>"
" Use %% to refer to directory of current file, regardless of cwd
cnoremap %% <C-r>=expand('%:h').'/'<CR>

function! mappings#clear_line_after_cursor()
  let pos = getcmdpos()
  let line_len = strlen(getcmdline())
  return repeat("\<Del>", line_len - pos + 1)
endfunction

" ---------------
" Leader Mappings
" ---------------

" Change working directory to that of the current file
noremap <leader>cd :lcd %:p:h<CR>:pwd<CR>

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Toggle spelling mode with <leader>s
nnoremap <silent> <leader>s :set spell!<CR>

" Quickly switch to last buffer
nnoremap <leader><leader> :e#<CR>

" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>

" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
nnoremap <silent> <leader>sl :normal "lyy"lpwvLr-^"lyyk"lP<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>s- :split<Bar>:wincmd j<CR>:wincmd =<CR>
nnoremap <silent> <leader>s\ :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

" Close the current window
nnoremap <silent> <A-w> :close<CR>

" Open terminal in a vertical split and switch to it
noremap <leader>t\ :vsplit<Bar>:wincmd l<CR>:term<CR>
" Open terminal in a horizontal split and switch to it
noremap <leader>t- :35split<Bar>:wincmd j<CR>:term<CR>

