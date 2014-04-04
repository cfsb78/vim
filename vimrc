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

" Load tag files in current directory
set tags=./;,tags;

" Open $MYVIMRC
nmap <Leader>v :newtab $MYVIMRC

" savednmap 
map <Leader>s :w<CR>

map <TAB> :NERDTreeToggle<CR>

" keys for updating vimrc
map <Leader>S :source $MYVIMRC<CR>
map <leader>upv :!~/.vim/update.sh " "

map <Leader>q :q<cr>
map <Leader>qq :q!<cr>
map <Leader>x :!

map <c-j> <c-w>j 
map <c-h> <c-w>h 
map <c-k> <c-w>k 
map <c-l> <c-w>l 

map <c-H> :vertical resize -10 <cr>      
map <c-J> :horizontal resize -10<cr>
map <c-L> :vertical resize +10<cr>       
map <c-K> :horizontal resize +10<cr>

" Laravel Specfic mapping
map <Leader>at :e app/tests/acceptance/<cr> 
map <Leader>b :!clear & ./vendor/bin/behat<CR>
map <Leader>bl :!clear & ./vendor/bin/behat -dl <cr>
" append snippets in behat
map <Leader>bas :!./vendor/bin/behat --append-snippets

