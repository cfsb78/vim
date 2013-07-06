#/bin/sh
if [[ -e ~/.vimrc ]]; then
   mv ~/.vimrc ~/.vimrc_orig
fi
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
