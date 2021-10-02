#!/usr/bin/env sh
# abort on errors
set -e
# validate git branch
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ $current_branch != 'master' ]; then
    echo '[WARNING] You are currently on $current_branch.'
    echo 'Please use master branch for deployment.'
    echo 'Aborting process.'
else
    # build
    yarn run build
    # get current semantic version number
    gitversion=$(GitVersion -output json -showvariable SemVer)
    # set new version in package.json
    yarn version --new-version $gitversion
    # navigate into the build output directory
    cd dist
    # if you are deploying to a custom domain
    # echo 'www.example.com' > CNAME
    git init
    git add -A
    git commit -m 'deploy $gitversion'
    git push -f git@github.com:tom-fejer/learnit.git master:gh-pages
    cd -
fi