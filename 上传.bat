set user=uyume
set str1=commit
set str2=%date%
set result=%str1%, %str2%
<<<<<<< HEAD
<<<<<<< HEAD
git add ./
git commit -m "%result%"
git pull
git checkout -b %user% origin/%user%
if errorlevel 1 goto Fail
if errorlevel 0 goto Success
pause ...

:Success
git branch -v
git merge main
git push origin %user% -f
pause ...

:Fail
git checkout %user%
git branch -v
git add ./
git commit -m "%result%"
git merge main
git push origin %user% -f
=======
git pull
git checkout -b %user% origin/%user%
git add ./
git commit -m "%result%"
git push -u origin %user%
>>>>>>> 35136eaafea7421d55f1d6b4252a92710aa69990
=======
git add ./
git commit -m "%result%"
git pull
git checkout -b %user% origin/%user%
if errorlevel 1 goto Fail
git branch -v
git merge main
git push origin %user% -f
pause ...

:Fail
git checkout %user%
git branch -v
git add ./
git commit -m "%result%"
git merge main
git push origin %user% -f
>>>>>>> main
pause ...