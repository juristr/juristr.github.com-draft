# remove previous publication
SHA=$(git rev-parse HEAD)
GIT_USER_ARGS="-c user.name='travis' -c user.email='travis'"

echo "cleaning up previous deploy"
rm -rf public
mkdir public

echo "creating master branch in public folder"
# clone master branch from the local repo into a repo located within "public"
git clone .git --branch master public

echo "generating hugo files"
# generate
hugo
  
echo "pushing changes back up to GitHub"
# commit the changes in the clone and push them back to the local master branch    
git -C public add --all
git -C public $GIT_USER_ARGS commit -am "publishing changes ($SHA)"
git -c public  push git@github.com:juristr/juristr.github.com-draft.git master