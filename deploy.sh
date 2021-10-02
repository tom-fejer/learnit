#!/usr/bin/env sh
# abort on errors
set -e
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ $current_branch != 'master' ]; then
    echo '[WARNING] You are currently on $current_branch.'
    echo 'Please use master branch for deployment.'
    echo 'Aborting process.'
fi
# build
yarn run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:tom-fejer/learnit.git master:gh-pages
cd -