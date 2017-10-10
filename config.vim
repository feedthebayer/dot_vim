" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ---------------------------------------------

" ---------------
" Color
" ---------------
set background=light
" colorscheme NeoSolarized
colorscheme default
set termguicolors

" -----------------------------
" File Locations
" -----------------------------
set spellfile=~/.vim/spell/custom.en.utf-8.add

" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif

" ---------------
" UI
" ---------------
set ruler          " Ruler on
" set relativenumber " Use hybrid line numbers (enable relative numbers)
" set number         " Use hybrid line numbers (enable current number for current line)
" set cursorline     " Highlight current line
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
" set colorcolumn=80 " Color the 80th column differently as a wrapping guide.

" Hide Tildes at the end of the file
" highlight Nontext ctermfg=White

" Slim pane divider
set fillchars+=vert:│
highlight VertSplit ctermbg=white guibg=white
highlight StatusLine cterm=NONE
highlight StatusLineNC cterm=NONE

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" ---------------
" Behaviors
" ---------------
" set backup             " Turn on backups
" set wildmode=longest,full  " longest common part, then all.
set hidden             " Change buffer - without saving
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=350     " Time to wait for a command (after leader for example).
set ttimeout
set ttimeoutlen=1      " Make arrow key mapping work
set scrolloff=3        " Keep three lines below the last line when scrolling
set switchbuf=useopen  " Switch to an existing buffer if one exists
set inccommand=split   " Live search/replace (%s/x/y/) preview!

" ---------------
" Text Format
" ---------------
set tabstop=2
set shiftwidth=2 " Tabs under smart indent
set shiftround   " Indent to multiple of 'shiftwidth
set cindent
set expandtab

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*,tags,ctags

" ---------------
" Visual
" ---------------

" ---------------
" Sounds
" ---------------
set visualbell " Turn off beeps
set t_vb=

