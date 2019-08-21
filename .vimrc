set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File browser
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Fold method
Plugin 'tmhedberg/SimpylFold'

" Auto indentation for python
Plugin 'vim-scripts/indentpython.vim'

" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

" Syntax
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" ColorScheme
Plugin 'jnurmine/Zenburn'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put your non-Plugin stuff after this line

" UTF-8 Support
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Default Indent
let python_highlight_all=1
syntax on
set sw=2
set sts=2
set ts=2
set nu
set rnu
colorscheme zenburn

" Python Indent 
au FileType python setlocal ts=4 sts=4 sw=4 tw=79 et ai fileformat=unix

" html Indent
au FileType css setlocal ts=2 sts=2 sw=2
au FileType html setlocal ts=2 sts=2 sw=2
au FileType javascript setlocal ts=2 sts=2 sw=2

" NERDTree tweaks
" Auto open on startup and focus on main window 
augroup NERD
    au!
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
augroup END
" Auto close if only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
