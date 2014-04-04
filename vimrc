call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype plugin on
let g:NERDTreeDirArrows=0
set nu
let mapleader=","
if $COLORTERM == 'gnome-terminal' 
	set term=gnome-256color 
	colorscheme railscasts 
else 
	colorscheme vividchalk 
endif 

set expandtab
set shiftwidth=3
set softtabstop=2

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Right> <NOP>
inoremap <Left> <NOP>
inoremap jj <Esc>
" remap 'I' to insert a single character
noremap <I> i<Space><Esc>r 
command NT NERDTree



" Open $MYVIMRC
nmap <Leader>v :e $MYVIMRC

" savednmap 
map <Leader>s :w<CR>

map <TAB> :NERDTreeToggle<CR>
map <Leader>S :source $MYVIMRC<CR>


map <Leader>q :q<cr>
map <Leader>q :q!<cr>

map <Leader>x :!
