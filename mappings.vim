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

" Yank entire buffer with gy
nnoremap gy :0,$ y<cr>

" Select entire buffer
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

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

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

" ---------------
" Window Movement
" ---------------
nnoremap <silent> <M-h> :WriteBufferIfNecessary<CR>:wincmd h<CR>
nnoremap <silent> <M-j> :WriteBufferIfNecessary<CR>:wincmd j<CR>
nnoremap <silent> <M-k> :WriteBufferIfNecessary<CR>:wincmd k<CR>
nnoremap <silent> <M-l> :WriteBufferIfNecessary<CR>:wincmd l<CR>

tnoremap <silent> <M-h> <c-\><c-n>:wincmd h<CR>
tnoremap <silent> <M-j> <c-\><c-n>:wincmd j<CR>
tnoremap <silent> <M-k> <c-\><c-n>:wincmd k<CR>
tnoremap <silent> <M-l> <c-\><c-n>:wincmd l<CR>

"   4 Window Splits
"
"   -----------------
"   g1 | g2 | g3 | g4
"   -----------------
nnoremap <silent> g1 :WriteBufferIfNecessary<CR>:wincmd t<CR>
nnoremap <silent> g2 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<CR>
nnoremap <silent> g3 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<bar>
      \:wincmd l<CR>
nnoremap <silent> g4 :WriteBufferIfNecessary<CR>:wincmd b<CR>

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

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" Scroll larger amounts with C-j / C-k
nnoremap <C-j> 12gj
nnoremap <C-k> 12gk

" ---------------
" Insert Mode Mappings
" ---------------

" NOTE - I remap my keyboard control key to trigger ESC when not combined with  another key

" ---------------
" Leader Mappings
" ---------------

" Change working directory to that of the current file
noremap <leader>cd :lcd %:p:h<CR>:pwd<CR>

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

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

" Format a json file with Underscore CLI
" Inspirited by https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
nnoremap <leader>fj <Esc>:%!underscore print<CR><Esc>:set filetype=json<CR>

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>s- :split<Bar>:wincmd j<CR>:wincmd =<CR>
nnoremap <silent> <leader>s\ :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

" Close the current window
nnoremap <silent> <m-w> :close<CR>

" Reselect the text that was just pasted
nnoremap <leader>v V`]

" Paste and select pasted
nnoremap <expr> gpp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Open terminal in a vertical split and switch to it
noremap <leader>t\ :vsplit<Bar>:wincmd l<CR>:term<CR>
" Open terminal in a horizontal split and switch to it
noremap <leader>t- :35split<Bar>:wincmd j<CR>:term<CR>

" ---------------
" Typo Fixes
" ---------------

noremap <F1> <Esc>
inoremap <F1> <Esc>
cnoremap w' w<CR>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Removes doc lookup mapping because it's easy to fat finger and never useful.
nnoremap K k
vnoremap K k

" Toggle paste mode with F5
nnoremap <silent> <F5> :set paste!<CR>

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>

" copy current file name (relative/absolute) to system clipboard
" from http://stackoverflow.com/a/17096082/22423
if has("mac") || has("gui_macvim") || has("gui_mac")
  " relative path  (src/foo.txt)
  nnoremap <silent> <leader>yp :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <silent> <leader>yP :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <silent> <leader>yf :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <silent> <leader>yd :let @*=expand("%:p:h")<CR>
endif

