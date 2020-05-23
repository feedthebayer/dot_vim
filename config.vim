" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ---------------------------------------------

let &shell = '/bin/bash'

" ---------------
" Color
" ---------------
set background=light

if (&background == "light")
  colorscheme zenfly
else
  colorscheme palenight
endif


set termguicolors

" -----------------------------
" File Locations
" -----------------------------
" set spellfile=~/.local/share/nvim/site/spell/en.utf-8.add

" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif

" ---------------
" UI
" ---------------
set mouse=a
" set ruler          " Ruler on
" set relativenumber " Use hybrid line numbers (enable relative numbers)
" set number         " Use hybrid line numbers (enable current number for current line)
" set cursorline     " Highlight current line
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
" set colorcolumn=80 " Color the 80th column differently as a wrapping guide.
set splitbelow       " Open new splits at the bottom instead of top
set cmdheight=2

" Hide Tildes at the end of the file
if (&background == "light")
  highlight Nontext ctermfg=white guifg=white
else
  highlight Nontext ctermfg=black guifg=#292d3e
endif

" Slim pane divider
set fillchars+=vert:│
if (&background == "light")
  highlight VertSplit ctermfg=white guifg=white ctermbg=black guibg=black
  highlight StatusLine guifg=white guibg=black
  highlight StatusLineNC guifg=white guibg=black
else
  highlight VertSplit guifg=#c792ea guibg=#292d3e
  highlight StatusLine guifg=black guibg=white
  highlight StatusLineNC guifg=black guibg=white
endif

" Highlight git merge conflict markers as an error message
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

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
  \rake-pipeline-*,tags,ctags,*/Pods/*

" ---------------
" Visual
" ---------------

" ---------------
" Sounds
" ---------------
set visualbell " Turn off beeps
set t_vb=


