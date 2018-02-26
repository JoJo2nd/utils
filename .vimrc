filetype plugin indent on

" 2 spaces for tabs
:set tabstop=2
:set shiftwidth=2
" tabs to spaces
:set expandtab
" no word wrap
:set nowrap
" line numbers on
:set number

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

" Adding support for silver searcher
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag for CtrlP listing, ag is fast enough that caching can be off
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under the cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Note: <Ctrl-O> returns to normal/command mode for a single
" operation.
" bind Ctrl-S to write the current buffer
inoremap <c-s> <c-o>:update<CR>

" bind Ctrl-Shift-B to build/make
inoremap <c-b> <esc>:make!<CR>:cw<CR>
nnoremap <c-b> :make!<CR>:cw<CR>
" bind Ctrl-] or Ctrl-[ to next, or prev
nnoremap <c-]> :cnext<CR>
nnoremap <c-[> :cprev<CR>

