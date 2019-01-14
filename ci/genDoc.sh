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

# move builded file 
cd ../
mv ./doc/build/html/* ./

# deploy
rm -rf ./doc
touch .nojekyll
git add -A
git commit -m 'updating doc'
git push origin gh-pages

# back to master branch
git checkout master



