@echo off
echo ^-^-^> start remove .vimrc
del /f/a/q "%USERPROFILE%\.vimrc"
echo ^-^-^> remove .vimrc from user dir
rd /s/q "%USERPROFILE%\vimfiles"
echo ^-^-^> uninstall successfully
pause
