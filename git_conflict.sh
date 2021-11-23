if [ $1 = "" ] ; then
    echo "ブランチ名を入力してください。"
    exit    
fi
git branch $1 && git checkout $1
touch index.html
echo "<h1>hello auto git commit </h1>" > index.html
git add .
git commit -m 'auto commit'
git push --set-upstream origin $1