set nocompatible              " required
filetype plugin on
syntax enable

"path and find, fuzzy file finder
set path+=**  " search subdir recursively, find ...
set wildmenu

set number

" Set ignore case, highlight, and incremental searches
set ignorecase
set hlsearch
set incsearch

if exists("+lines")
  set lines=32
endif
if exists("+columns")
  set columns=108
endif

" Ctrl + s to save file
noremap <silent> <C-S>  :update<CR>
vnoremap <silent> <C-S> :<C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" map Tab key to Escape in Ubuntu.
" au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

