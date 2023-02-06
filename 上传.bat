set user=uyume
set str1=commit
set str2=%date%
set result=%str1%, %str2%
git add ./
git commit -m "%result%"
git pull
git checkout -b %user% origin/%user%
if errorlevel 1 goto Fail
if errorlevel 0 goto Success
pause

:Success
git branch -v
git merge main
git push origin %user% -f
pause

:Fail
git checkout %user%
git branch -v
git merge main
git push origin %user% -f
pause