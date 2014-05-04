" Sample Vimrc

" Adding the entry for Pathogen
execute pathogen#infect()

"Adding entries for runtimepath
"set runtimepath^=~/.vim/bundle/ctrlp.vim

set nocompatible
filetype off
" setup indent, tab, etc.
set smartindent
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set ignorecase
set pastetoggle=<F2>
set formatoptions-=cro
set title
set autochdir
set wildmenu
set ruler
" set hidden
" show number
set number
" syntax
syntax enable
syntax on
set hls
set autoread
set mouse=a
" set history size
set history=200

" Basic Key mapping - moving around
inoremap jj <Esc>
nnoremap j<space> 10j
nnoremap k<space> 10k
nnoremap ; :
" Extra entries for navigation in Insert mode
inoremap <C-l> <Right>
inoremap <C-k> <Up>

" make hjkl movements accessible from insert mode via the <Alt> modifier key
"inoremap <A-h> <C-o>h
"inoremap <A-j> <C-o>j
"inoremap <A-k> <C-o>k
"inoremap <A-l> <C-o>l

" Entries for visual mode
" commenting blocks C++
vnoremap <F5> :s/^/\/\/<CR>

" Vimgrep mapping
nnoremap codegrep :vimgrep /search-string/gj ./**/*.[ch]pp

"Finding files in subdirectories
nnoremap <leader>tab :tabnew 

"Mapping for CtrlP plugin
"nnoremap <leader>p :CtrlP .<Cr>

" Entries for the Syntastic plugin
" On by default, turn it off for html

"let g:syntastic_check_on_open=1

let g:syntastic_mode_map = { 'mode': 'active',
    \ 'active_filetypes': ['python'],
        \ 'passive_filetypes': ['html','cpp'] }

"let g:syntastic_python_checkers=['pyflakes']
"let g:syntastic_cpp_compiler_options = ' -std=c++11'

"let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_auto_refresh_includes = 1
"let g:syntastic_enable_highlighting = 1




" Entries for the NERDTree Plugin
" NERDTree is fucking awesome

"let env='play'

"if env=='play'
"    nnoremap <leader>t :NERDTree .<cr>
"endif

" Entries for enabling recursive search up the directory for the exhuberant tags
" Not added as yet

set tags=./tags,tags;$HOME

" Change the default leader
let mapleader=","

nnoremap <leader>nh :nohls<CR>

nnoremap <leader>s :wa<CR>
" Quickly editing and sourcing the .vimrc
nnoremap <leader>eim :vsplit $MYVIMRC<cr>
nnoremap <leader>sim :source $MYVIMRC<cr>

" Automcommand list
" au FocusLost * :wa

" Folding stuff

" entry for Ctrlp plugin
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_max_files = 0
"let g:ctrlp_max_depth = 100
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:100,results:10'
"let g:ctrlp_use_caching = 1

" Entry for MBE Plugin
nnoremap <leader>mb :MBEToggle<cr>

" Entry for Netrw plugin
let g:netrw_liststyle=3

" Vimux Mappings
nnoremap <leader>vp :VimuxPromptCommand<CR>
nnoremap  <leader>vl :VimuxRunLastCommand<CR>
nnoremap <leader>vq :VimuxCloseRunner<CR>

" Mappings for MyPlugin.vim
"which uses Vimux.vim

nnoremap <leader>cf :call TakeUserInput()<CR>


" Jshint for js inside HTML
nnoremap <leader>js :Clam jshint --extract=auto %<CR>
" Jshint using clam for .js files
nnoremap <leader>jh :Clam jshint %<CR>

" Bracket completion mappings
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
