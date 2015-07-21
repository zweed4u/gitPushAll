#!/bin/bash
 
bold=$(tput bold)
normal=$(tput sgr0)
directory=$(pwd)"/*" 
adjust=$(echo $directory | sed 's/ \+/\_/g')


echo -e "Make sure this shell file is in the local project's directory"

echo -e "${bold}Username${normal}?"
read user


echo -e '"Github email? (author purposes)"'
read email


git config --global user.name $user
git config --global user.email $email


git init

echo -e "local repo created"

sleep .5


echo '*~' >> .gitignore
echo git.sh >> .gitignore


git add .




echo -e 'Repo Name (Must match)'
read repo_Name

echo Commit name?
read commit_Name

#just in case...
git rm --cached git.sh

git commit -m $commit_Name





echo -e "Setting remote..."
git remote add origin https://github.com/$user/$repo_Name.git

echo -e "${bold}Done${normal}"

echo -e "Pushing changes to origin..."
git push -u origin master

echo -e 'Complete. Check repo for changes.'
