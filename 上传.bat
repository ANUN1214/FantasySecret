set user=uyume
set str1=commit
set str2=%date%
set result=%str1%, %str2%
git pull
git checkout -b %user% origin/%user%
git add ./
git commit -m "%result%"
git push -u origin %user% -f
pause ...