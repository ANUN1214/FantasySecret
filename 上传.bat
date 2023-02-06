set user=uyume
set str1=commit
set str2=%date%
set result=%str1%, %str2%
git remote set-url --fetch origin https://gitclone.com/github.com/yuan-uyume/FantasySecret.git
git remote set-url --push origin https://github.com/yuan-uyume/FantasySecret.git
git pull
git add ./
git commit -m "%result%"
git push origin %user%
pause ...