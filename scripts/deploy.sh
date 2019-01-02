# remove previous publication
rm -rf public
mkdir public

# clone master branch from the local repo into a repo located within "public"
git clone .git --branch master public
  
# generate
hugo

pushd
  
# commit the changes in the clone and push them back to the local master branch    
cd public && git add --all && git commit -m "Publishing to master" && git push origin master

# publish
git push git@github.com:juristr/juristr.github.com-draft.git master

popd