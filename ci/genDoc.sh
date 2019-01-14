# move to this file
cd `dirname $0`

# move project root & remove files 
cd ..
git checkout gh-pages
find ./ | grep -v .git | xargs rm -r

# get resources from master branch 
git checkout master doc

# build  doc
cd ./doc
make html

# setup deploy gh-pages
rm -rf ./docs
touch .nojekyll



