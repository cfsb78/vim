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
  moduleDir="./bundle/$1"
  echo "Adding submodule $1 to $moduleDir ..."
  git submodule add $2 $moduleDir
  echo "Initializing $1 submodule..."
  git submodule init $moduleDir
  echo "Updating $1 submodule..."
  git submodule update $moduleDir
  echo "Adding new files and commiting..."
  git add .
  git commit -m "Installed $1 as submodule"
  echo "Changes committed! Run 'git push origin' to complete delivery."
}

if [ $# -lt 2 ];
then
   show_usage
fi

cd ~/.vim

if [ -e ~/.vim/bundle ]; then
  add_module $1 $2
else
   mkdir ~/vim/bundle
   add_module
fi


