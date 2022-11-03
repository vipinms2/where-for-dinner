cd ~/where-for-dinner/
commit=$(date +%s)
echo $commit 
git pull
sed -i '' -E  "s/Submitted Searches And Results[0-9]+/Submitted Searches And Results$commit/g" ~/where-for-dinner/hungryman-ui/src/DiningSearches.js
git add .
git commit -m $commit
git push
