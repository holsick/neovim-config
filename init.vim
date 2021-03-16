set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set number
syntax enable
set hidden
set encoding=utf-8
set fileencoding=utf-8
set ruler
set tabstop=2
set shiftwidth=2
set cursorline
set smarttab
set expandtab
set smartindent

" Colorschemes
colorscheme gruvbox " needed to cp the gruvbox.vim file from its install dir to /usr/share/nvim/runtime/colors
set background=dark
" set background=light uncomment this to use light theme (probably not though)

let g:gruvbox_contrast_dark = 'hard'

" Disable jedi vim completions because deoplete is used
let g:jedi#autocompletions_enabled = 0

" Open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

call plug#end()
