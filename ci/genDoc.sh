# move to this file
cd `dirname $0`

# build  doc
cd ../doc

make clean
make html

# move project root & remove files 
cd ..
git checkout gh-pages
find ./ | grep -v .git
