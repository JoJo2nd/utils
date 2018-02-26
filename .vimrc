filetype plugin indent on

:set tabstop=2
:set shiftwidth=2
:set expandtab

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"You complete me clang auto complete
Plugin 'Valloric/YouCompleteMe' 
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


