" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ---------------------------------------------

" ---------------
" Color
" ---------------
set background=dark
colorscheme solarized
" Force 256 color mode if available
if $TERM =~ "-256color"
   set t_Co=256
endif

" -----------------------------
" File Locations
" -----------------------------
set backupdir=~/.vim/.backup// " Double // causes backups to use full file path
set directory=~/.vim/.tmp//
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
set relativenumber " Use hybrid line numbers (enable relative numbers)
set number         " Use hybrid line numbers (enable current number for current line)
set cmdheight=2    " Make the command area two lines high
set cursorline     " Highlight current line
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
if exists('+colorcolumn')
   set colorcolumn=80 " Color the 80th column differently as a wrapping guide.
endif
" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files
  set noballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" ---------------
" Behaviors
" ---------------
set backup             " Turn on backups
set wildmode=longest,full  " longest common part, then all.
set hidden             " Change buffer - without saving
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=450     " Time to wait for a command (after leader for example).
set ttimeout
set ttimeoutlen=-1   " Neovim handles ESC as alt+key, this solves problem
set nofoldenable       " Disable folding entirely.
set foldlevelstart=99  " I really don't like folds.
set iskeyword+=\$,-   " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " Keep three lines below the last line when scrolling
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists

" ---------------
" Text Format
" ---------------
set tabstop=2
set shiftwidth=2 " Tabs under smart indent
set shiftround
set cindent
set expandtab

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*,tags

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set visualbell " Turn off beeps
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed

