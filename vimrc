call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype plugin on
set nu
if $COLORTERM == 'gnome-terminal' 
	set term=gnome-256color 
	colorscheme railscasts 
else 
	colorscheme default 
endif 

set expandtab
set shiftwidth=3
set softtabstop=2

command NT NERDTree
