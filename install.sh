#/bin/sh
if [ -f ~/.vimrc ]; then
   cp ~/.vimrc ~/.vimrc_orig
   rm ~/.vimrc
fi
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
