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
  echo "Adding submodule $1 to bundle/$1 ..."
  git submodule add $2 bundle/$1
  echo "Initializing $1 submodule..."
  git submodule init bundle/$1
  echo "Updating $1 submodule..."
  git submodule update bundle/$1
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
  add_module
else
   mkdir ~/vim/bundle
   add_module
fi


