" ~/.vimrc file

set nocompatible              " required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" add all your plugins here

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'mattn/emmet-vim'

" plugin add ends here

call vundle#end()            " required
filetype plugin on    " required

" for Nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <C-N> :NERDTree<CR>
autocmd VimEnter * NERDTree

noremap <C-H> <C-W><C-H>
noremap <C-L><C-L> <C-W><C-L>

let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_leader_key=',' "activate two ,

source ~/.vimrc
