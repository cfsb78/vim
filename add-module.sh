#/bin/sh

# script is used to add vim plugins as git submodules for easier maintenance in source control
# should be called as follows:

# ./add-module.sh bundle_name git_repo_url

show_usage()
{
   echo "add-moudle.sh is used to download/add vim plugin bundles as submodules to the existing git repo"
   echo "Usage: "
   echo "add-module.sh bundle_name bundle_git_repo_url"
   exit 1
}
add_module()
{
  git submodule add $2 bundle/$1
  git add .
  git commit -m "Installed $1 as submodule"
}

if [ $# -lt 2 ];
then
   show_usage
fi

cd ~/.vim

if [[-e ~/.vim/bundle ]]; then
  add_module
else
   mkdir ~/vim/bundle
   add_module
fi


