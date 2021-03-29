" ~/.vimrc file

set nocompatible              " required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" add all your plugins here

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" plugin add ends here

call vundle#end()            " required
filetype plugin on    " required

" for Nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <C-N> :NERDTree<CR>
autocmd VimEnter * NERDTree

source ~/.vimrc
