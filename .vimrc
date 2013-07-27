" Sample Vimrc

" Adding the entry for Pathogen
execute pathogen#infect()

set nocompatible
filetype off
" setup indent, tab, etc.
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
" show number
set number
" syntax
syntax enable
syntax on
set hls

" set history size
set history=200

" Basic Key mapping - moving around
inoremap jj <Esc>
nnoremap j<space> 10j
nnoremap k<space> 10k
nnoremap :s :wa

" Entries for the Syntastic plugin
" On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
    \ 'active_filetypes': [],
        \ 'passive_filetypes': ['html'] }

let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" Entries for the NERDTree Plugin
" NERDTree is fucking awesome
