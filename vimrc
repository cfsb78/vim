call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype plugin on
set nu
let mapleader=","
if $COLORTERM == 'gnome-terminal' 
	set term=gnome-256color 
	colorscheme railscasts 
else 
	colorscheme default 
endif 

set expandtab
set shiftwidth=3
set softtabstop=2

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Right> <NOP>
inoremap <Left> <NOP>

" remap 'I' to insert a single character
noremap <I> i<Space><Esc>r 
command NT NERDTree
