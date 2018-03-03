set nocompatible " must be first line

filetype on                  " required
filetype plugin on
filetype indent on

" 2 spaces for tabs
:set tabstop=2
:set shiftwidth=2
" tabs to spaces
:set expandtab
" no word wrap
:set nowrap
" line numbers on
:set number

" Adding support for silver searcher
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag for CtrlP listing, ag is fast enough that caching can be off
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " let g:ctrlp_use_caching = 0
endif

" remove arrow keys
" noremap <Left> <NOP>
" noremap <Right> <NOP>
" noremap <Up> <NOP>
" noremap <Down> <NOP>

" bind K to grep word under the cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Note: <Ctrl-O> returns to normal/command mode for a single
" operation.
" bind Ctrl-S to write the current buffer
inoremap <C-S> <c-o>:w<CR>
nnoremap <C-S> :w<CR>

" bind Ctrl-B to build/make
inoremap <C-B> <esc>:make!<CR>:cw<CR>
nnoremap <C-B> :make!<CR>:cw<CR>
" bind Ctrl-] or Ctrl-[ to next, or prev
nnoremap <C-N> :cnext<CR>
" NOTE: the [ really screws up vim so arrow keys won't work...Need escape
nnoremap <C-P> :cprev<CR>
" bind ctrl-m to jump to matching brace, etc
inoremap <C-M> <c-o>%
nnoremap <C-M> %
" bind ctrl-TAB to bprevious
nnoremap <C-Left> :bprevious<CR>
nnoremap <C-Right> :bnext<CR>

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



