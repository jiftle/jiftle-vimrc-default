@echo off

:: ���������ļ�
echo ^-^-^> start install .vimrc"
copy /y ".vimrc" "%USERPROFILE%\vimrc"

:: ����.vim�ļ���
echo ^-^-^> copy .vimrc to user dir
xcopy /e/y/i/f ".vim" "%USERPROFILE%\vimfiles"
echo ^-^-^> install successfully
pause
