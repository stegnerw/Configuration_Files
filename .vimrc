" Vundle
set nocompatible " be iMproved, required for Vundle
filetype off     " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
" Colors
Plugin 'xdg/vim-darkluma'

" All plugins must be added before the following line
call vundle#end()
filetype plugin indent on
" End Vundle

" Variable Settings
" Colors
colorscheme darkluma

" Line Settings
set lbr
set number

" Tab Width
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

