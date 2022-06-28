echo "\033[0;32mDeploying updates to GitHub...\033[0m"

# pull before change
cd public

git pull

cd -

# build the project
hugo

cd public

if [[ `git status --porcelain` ]]; then
  # public has changes

  msg="rebuilding site `date`"

  if [ $# -eq 1 ]
    then msg="$1"
  fi

  echo "\033[0;32mgit commit -m \"$msg\"\033[0m"

  git add .

  git commit -m "$msg"
  # push source to github
  git push
else
  echo "\033[0;32mNothing change\033[0m"
fi

cd -
