set user=ANUN
git pull
git checkout -b %user% origin/%user%
if errorlevel 1 goto Fail
if errorlevel 0 goto Success

:Success
echo 更新成功!
pause

:Fail
git checkout %user%
pause