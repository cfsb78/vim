#/bin/sh

pushd ~/.vim
git add vimrc
git commit -m "$1"
git push

popd
