push_d %userprofile%
if exist .vimrc (
   rn .vimrc  .vimrc_orig
)
cd .vim
git submodule init
git submodule update
pop_d
