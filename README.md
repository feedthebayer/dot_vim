# Simple, Beautiful, and Screaming Fast Vim Config

Version 5! Major, major clean up and numerous fixes. Performance is now off the charts!

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
  [ripgrep](https://github.com/BurntSushi/ripgrep) to be installed.
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

This is also an excellent place to put machine specific configuration. For example, I have a `linux.vim`
file in `plug_ins/custom` where I have some config that I use on Linux at work but don't want
on OSX at home.

## Plugin List

| Stars____ | **Plugin** | **Description** |
| --------: | :--------- | :-------------- |
| 18,168 ★ |[fzf](https://github.com/junegunn/fzf) [:page_facing_up:](plug_ins/fzf.vim)|:cherry_blossom: A command-line fuzzy finder |
| 10,134 ★ |[vim-fugitive](https://github.com/tpope/vim-fugitive)|fugitive.vim: A Git wrapper so awesome, it should be illegal |
| 6,416 ★ |[ale](https://github.com/w0rp/ale) [:page_facing_up:](plug_ins/ale.vim)|Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration |
| 5,300 ★ |[vim-gitgutter](https://github.com/airblade/vim-gitgutter) [:page_facing_up:](plug_ins/vim-gitgutter.vim)|A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks. |
| 4,448 ★ |[emmet-vim](https://github.com/mattn/emmet-vim) [:page_facing_up:](plug_ins/emmet-vim.vim)|emmet for vim: http://emmet.io/ |
| 4,068 ★ |[vim-easymotion](https://github.com/easymotion/vim-easymotion) [:page_facing_up:](plug_ins/vim-easymotion.vim)|Vim motions on speed! |
| 3,644 ★ |[deoplete.nvim](https://github.com/Shougo/deoplete.nvim) [:page_facing_up:](plug_ins/deoplete.nvim.vim)|:stars: Dark powered asynchronous completion framework for neovim/Vim8 |
| 3,260 ★ |[lightline.vim](https://github.com/itchyny/lightline.vim) [:page_facing_up:](plug_ins/lightline.vim)|A light and configurable statusline/tabline plugin for Vim |
| 2,940 ★ |[vim-javascript](https://github.com/pangloss/vim-javascript) [:page_facing_up:](plug_ins/vim-javascript.vim)|Vastly improved Javascript indentation and syntax support in Vim. |
| 2,791 ★ |[fzf.vim](https://github.com/junegunn/fzf.vim) [:page_facing_up:](plug_ins/fzf.vim)|fzf :heart: vim |
| 2,336 ★ |[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) [:page_facing_up:](plug_ins/vim-tmux-navigator.vim)|Seamless navigation between tmux panes and vim splits |
| 2,266 ★ |[vim-polyglot](https://github.com/sheerun/vim-polyglot) [:page_facing_up:](plug_ins/vim-polyglot.vim)|A solid language pack for Vim. |
| 1,828 ★ |[tabular](https://github.com/godlygeek/tabular) [:page_facing_up:](plug_ins/tabular.vim)|Vim script for text filtering and alignment |
| 1,602 ★ |[ag.vim](https://github.com/rking/ag.vim) [:page_facing_up:](plug_ins/ag.vim)|Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack' |
| 1,365 ★ |[vim-jsx](https://github.com/mxw/vim-jsx) [:page_facing_up:](plug_ins/vim-jsx.vim)|React JSX syntax highlighting and indenting for vim. |
| 935 ★ |[tcomment_vim](https://github.com/tomtom/tcomment_vim) [:page_facing_up:](plug_ins/tcomment_vim.vim)|An extensible & universal comment vim-plugin that also handles embedded filetypes |
| 864 ★ |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: Helpers for UNIX |
| 740 ★ |[vim-node](https://github.com/moll/vim-node) [:page_facing_up:](plug_ins/vim-node.vim)|Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node. |
| 509 ★ |[vim-flow](https://github.com/flowtype/vim-flow) [:page_facing_up:](plug_ins/vim-flow.vim)|A vim plugin for Flow |
| 150 ★ |[vim-styled-components](https://github.com/styled-components/vim-styled-components) [:page_facing_up:](plug_ins/vim-styled-components.vim)|Vim bundle for http://styled-components.com based javascript files. |
| 98 ★ |[ListToggle](https://github.com/Valloric/ListToggle) [:page_facing_up:](plug_ins/ListToggle.vim)|A vim plugin for toggling the display of the quickfix list and the location-list. |
| 31 ★ |[nrun.vim](https://github.com/jaawerth/nrun.vim) [:page_facing_up:](plug_ins/nrun.vim)|"which" and "exec" functions targeted at local node project bin, with "which" fallback |
| 25 ★ |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| 13 ★ |[vim-mdx-js](https://github.com/jxnblk/vim-mdx-js) [:page_facing_up:](plug_ins/vim-mdx-js.vim)| |
| 1 ★ |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |

_For a grand total of 25 plugins!_

_Generated by `rake update_readme` on 2018/11/29._

