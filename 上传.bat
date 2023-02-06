set user=uyume
set str1=commit
set str2=%date%
set result=%str1%, %str2%
git pull origin main
git checkout -b %user% origin/%user%
git branch -v
git add ./
git commit -m "%result%"
git merge main
git push -u origin %user% -f
pause ...