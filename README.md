# The Vim Configuration of Champions

Version 4! Dropped support for vim in favor of NeoVim in the terminal!
Also switched from Vundle to vim-plug for better NeoVim integration and performance

[![neovim][ss]][ss]

[ss]: https://github.com/flybayer/dot_vim/raw/master/screenshots/neovim.png

## Installation

1. `git clone http://github.com/flybayer/dot_vim.git ~/.vim`.
2. `cd ~/.vim`.
3. Run `scripts/setup`.

## NeoVim Requirements

* [NeoVim](https://github.com/neovim/neovim) -
  ([installation](https://github.com/neovim/neovim/wiki/Installing))

## Plugin Requirements

Here's a list of plugins that require further installation or have
dependencies.

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be installed.
* [Ag.vim](https://github.com/rking/ag.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be installed.
* [Source Code for Powerline](http://git.io/H3fYBg) The custom font I'm using for vim-airline.

## Mappings

* Pressing `enter` in normal mode saves the current buffer.
* `<space>cd` to change directory to that of the current file.
* `<space><space>` to switch to previous buffer
* `<space>cc` to un/comment the current line or visual selection

And many more. See [`mappings.vim`](mappings.vim) and
[`plug_ins`](plug_ins) for more.

## Installing Custom Plugins

Create a new `.vim` file with the same name as the plugin you'd like to install
in [`plug_ins/custom`](plug_ins/custom). Then add the installation
block. For example:

`plug_ins/custom/vim-move.vim`

```viml
if exists('g:plug_loading_plugins')
  Plugin 'matze/vim-move.vim'
  finish
endif

let g:move_key_modifier = 'C'
```

This example installs [`vim-move`](https://github.com/matze/vim-move).

This is also an excellent place to put machine specific configuration. For example, I have a `windows.vim`
file in `plug_ins/custom` where I have some config that I use on Windows at work but don't want
on OSX at home.

## Plugin List

| Stars____ | **Plugin** | **Description** |
| --------: | :--------- | :-------------- |
| 10,634 ★ |[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) [:page_facing_up:](plug_ins/YouCompleteMe.vim)|A code-completion engine for Vim |
| 7,292 ★ |[vim-airline](https://github.com/vim-airline/vim-airline) [:page_facing_up:](plug_ins/vim-airline.vim)|lean & mean status/tabline for vim that's light as air |
| 6,850 ★ |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](plug_ins/vim-fugitive.vim)|fugitive.vim: a Git wrapper so awesome, it should be illegal |
| 6,203 ★ |[nerdtree](https://github.com/scrooloose/nerdtree) [:page_facing_up:](plug_ins/nerdtree.vim)|A tree explorer plugin for vim. |
| 4,749 ★ |[fzf](https://github.com/junegunn/fzf) [:page_facing_up:](plug_ins/fzf.vim)|:cherry_blossom: A command-line fuzzy finder written in Go |
| 4,373 ★ |[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)|True Sublime Text style multiple selections for Vim |
| 3,820 ★ |[vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) [:page_facing_up:](plug_ins/vim-colors-solarized.vim)|precision colorscheme for the vim text editor |
| 3,623 ★ |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](plug_ins/vim-surround.vim)|surround.vim: quoting/parenthesizing made simple |
| 3,145 ★ |[vim-rails](https://github.com/tpope/vim-rails) [:page_facing_up:](plug_ins/vim-rails.vim)|rails.vim: Ruby on Rails power tools |
| 3,135 ★ |[emmet-vim](https://github.com/mattn/emmet-vim) [:page_facing_up:](plug_ins/emmet-vim.vim)|emmet for vim: http://emmet.io/ |
| 2,449 ★ |[vim-easymotion](https://github.com/easymotion/vim-easymotion) [:page_facing_up:](plug_ins/vim-easymotion.vim)|Vim motions on speed! |
| 2,325 ★ |[ultisnips](https://github.com/SirVer/ultisnips) [:page_facing_up:](plug_ins/ultisnips.vim)|UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips! |
| 1,794 ★ |[supertab](https://github.com/ervandew/supertab)|Perform all your vim insert mode completions with Tab |
| 1,684 ★ |[vim-coffee-script](https://github.com/kchmck/vim-coffee-script)|CoffeeScript support for vim |
| 1,610 ★ |[vim-javascript](https://github.com/pangloss/vim-javascript)|Vastly improved Javascript indentation and syntax support in Vim. |
| 1,474 ★ |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) [:page_facing_up:](plug_ins/vim-indent-guides.vim)|A Vim plugin for visually displaying indent levels in code |
| 1,432 ★ |[vim-ruby](https://github.com/vim-ruby/vim-ruby)|Vim/Ruby Configuration Files |
| 1,316 ★ |[tabular](https://github.com/godlygeek/tabular) [:page_facing_up:](plug_ins/tabular.vim)|Vim script for text filtering and alignment |
| 1,249 ★ |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](plug_ins/vim-startify.vim)|The fancy start screen for Vim. |
| 1,200 ★ |[gist-vim](https://github.com/mattn/gist-vim) [:page_facing_up:](plug_ins/gist-vim.vim)|vimscript for gist |
| 1,179 ★ |[ag.vim](https://github.com/rking/ag.vim) [:page_facing_up:](plug_ins/ag.vim)|Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack' |
| 1,135 ★ |[vim-unimpaired](https://github.com/tpope/vim-unimpaired)|unimpaired.vim: pairs of handy bracket mappings |
| 1,128 ★ |[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) [:page_facing_up:](plug_ins/vim-tmux-navigator.vim)|Seamless navigation between tmux panes and vim splits |
| 1,014 ★ |[delimitMate](https://github.com/Raimondi/delimitMate) [:page_facing_up:](plug_ins/delimitMate.vim)|Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc. |
| 890 ★ |[vim-signify](https://github.com/mhinz/vim-signify) [:page_facing_up:](plug_ins/vim-signify.vim)|Show a diff via Vim sign column. |
| 803 ★ |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| 696 ★ |[neomake](https://github.com/benekastah/neomake) [:page_facing_up:](plug_ins/neomake.vim)|A plugin for asynchronous :make using Neovim's job-control functionality |
| 677 ★ |[vim-notes](https://github.com/xolox/vim-notes)|Easy note taking in Vim |
| 667 ★ |[html5.vim](https://github.com/othree/html5.vim)|HTML5 omnicomplete and syntax |
| 635 ★ |[tcomment_vim](https://github.com/tomtom/tcomment_vim) [:page_facing_up:](plug_ins/tcomment_vim.vim)|An extensible & universal comment vim-plugin that also handles embedded filetypes |
| 627 ★ |[vim-json](https://github.com/elzr/vim-json)|A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly. |
| 566 ★ |[vim-less](https://github.com/groenewege/vim-less)|vim syntax for LESS (dynamic CSS) |
| 558 ★ |[vim-haml](https://github.com/tpope/vim-haml)|Vim runtime files for Haml, Sass, and SCSS |
| 550 ★ |[vim-session](https://github.com/xolox/vim-session) [:page_facing_up:](plug_ins/vim-session.vim)|Extended session management for Vim (:mksession on steroids) |
| 499 ★ |[vim-endwise](https://github.com/tpope/vim-endwise)|endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc |
| 490 ★ |[vim-textobj-user](https://github.com/kana/vim-textobj-user)|Vim plugin: Create your own text objects |
| 481 ★ |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: helpers for UNIX |
| 438 ★ |[vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)|Refactoring tool for Ruby in vim! |
| 357 ★ |[vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)|Add CSS3 syntax support to vim's built-in `syntax/css.vim`. |
| 343 ★ |[fzf.vim](https://github.com/junegunn/fzf.vim) [:page_facing_up:](plug_ins/fzf.vim)|fzf :heart: vim |
| 327 ★ |[webapi-vim](https://github.com/mattn/webapi-vim)|vim interface to Web API |
| 295 ★ |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways) [:page_facing_up:](plug_ins/MatchTagAlways.vim)|A Vim plugin that always highlights the enclosing html/xml tags |
| 292 ★ |[vim-cucumber](https://github.com/tpope/vim-cucumber)|Vim Cucumber runtime files |
| 277 ★ |[vim-bundler](https://github.com/tpope/vim-bundler)|bundler.vim: Lightweight support for Ruby's Bundler |
| 259 ★ |[vim-mustache-handlebars](https://github.com/mustache/vim-mustache-handlebars) [:page_facing_up:](plug_ins/vim-mustache-handlebars.vim)|mustache and handlebars mode for vim |
| 254 ★ |[vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)|A custom text object for selecting ruby blocks. |
| 225 ★ |[vim-markdown](https://github.com/gabrielelana/vim-markdown)|Markdown for Vim: a complete environment to create Markdown files with a syntax highlight that don't sucks! |
| 186 ★ |[vim-misc](https://github.com/xolox/vim-misc)|Miscellaneous auto-load Vim scripts |
| 179 ★ |[vim-rake](https://github.com/tpope/vim-rake)|rake.vim: it's like rails.vim without the rails |
| 152 ★ |[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) [:page_facing_up:](plug_ins/vim-airline-themes.vim)|A collection of themes for vim-airline |
| 111 ★ |[ZoomWin](https://github.com/vim-scripts/ZoomWin) [:page_facing_up:](plug_ins/ZoomWin.vim)|Zoom in/out  of windows (toggle between one window and multi-window) |
| 104 ★ |[ember.vim](https://github.com/dsawardekar/ember.vim) [:page_facing_up:](plug_ins/ember.vim)|Vim plugin for the Emberjs frontend framework |
| 102 ★ |[matchit.zip](https://github.com/vim-scripts/matchit.zip)|extended % matching for HTML, LaTeX, and many other languages |
| 101 ★ |[vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)|Start a * or # search from a visual block |
| 96 ★ |[colorv.vim](https://github.com/Rykka/colorv.vim) [:page_facing_up:](plug_ins/colorv.vim)|A powerful color tool in vim |
| 80 ★ |[vim-anzu](https://github.com/osyo-manga/vim-anzu) [:page_facing_up:](plug_ins/vim-anzu.vim)|Vim search status. |
| 60 ★ |[portkey](https://github.com/dsawardekar/portkey) [:page_facing_up:](plug_ins/portkey.vim)|Navigate files at the speed of Vim. |
| 59 ★ |[L9](https://github.com/vim-scripts/L9)|Vim-script library |
| 49 ★ |[ListToggle](https://github.com/Valloric/ListToggle) [:page_facing_up:](plug_ins/ListToggle.vim)|A vim plugin for toggling the display of the quickfix list and the location-list. |
| 37 ★ |[QFEnter](https://github.com/yssl/QFEnter) [:page_facing_up:](plug_ins/QFEnter.vim)|Open a Quickfix item in a window you choose. (Vim plugin) |
| 20 ★ |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| 18 ★ |[vim-bitbake](https://github.com/kergoth/vim-bitbake)|Vim files for the BitBake tool |
| 7 ★ |[indenthtml.vim](https://github.com/vim-scripts/indenthtml.vim) [:page_facing_up:](plug_ins/indenthtml.vim)|alternative html indent script |
| 0 ★ |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |

_For a grand total of 64 plugins!_

_Generated by `rake update_readme` on 2016/04/29._

