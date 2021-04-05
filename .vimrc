" ~/.vimrc file, keep it short and neat

set nocompatible              " required
filetype plugin on
syntax enable

"path and find, fuzzy file finder
set path+=**  " search subdir recursively, find ...
set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=**/venv/**

set number

" Set ignore case, highlight, and incremental searches
set ignorecase
set hlsearch
set incsearch

set lines=38
set columns=140

" Ctrl + s to save file
noremap <silent> <C-S>  :update<CR>
vnoremap <silent> <C-S> :<C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"shortcut ^l to mute highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

autocmd BufEnter * let &titlestring = ' ' . expand("%:p")             
set title
