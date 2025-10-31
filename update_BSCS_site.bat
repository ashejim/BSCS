@echo off
SET /P Message=Enter git BSCS commit comment:
title compile html, save to repo folder, update GitHub repo and website
jupyter-book build --all "..\BSCS"
echo "Compiling local ...\jupyter-books\BSCS ..."
xcopy /s /e /h /i /y "..\BSCS" "..\github_book_repo\BSCS"
echo "Copied local book to ..\github_book_repo\BSCS ..."
cd "..\BSCS" 
git add ./*
git commit -m "%Message%"
echo "Commited..."
git push
echo "Pushed..."
ghp-import -n -p -f ../BSCS/_build/html
echo "Imported to git page..."
start https://ashejim.github.io/BSCS/intro.html
echo "Gitpage may take a few minutes to update. END"
cd D:\OneDrive - Western Governors University\jupyter-books\BSCS


@REM @echo off
@REM cd D:\OneDrive - Western Governors University\jupyter-books\C964
@REM FOR /d /r . %%d IN (.history) DO @IF EXIST "%%d" rd /s /q "%%d"
@REM @REM DEL /S /Q "D:\OneDrive - Western Governors University\jupyter-books\C964\output_plot*.png"
@REM DEL /S /Q "output_plot*.png"
@REM SET /P Message=Enter git C964 commit comment: 
@REM title compile html, save to repo folder, update GitHub repo and website
@REM jupyter-book build --all "..\C964"
@REM echo "Compiling local ..\C964 ..."
@REM xcopy /s /e /h /i /y "..\C964" "..\github_book_repo\C964"
@REM echo "Copied local book to ..\github_book_repo\C964 ..."
@REM cd "..\github_book_repo\C964" 
@REM git add ./*
@REM git commit -m "%Message%"
@REM echo "Commited..."
@REM git push
@REM echo "Pushed..."
@REM ghp-import -n -p -f _build/html
@REM echo "Imported to git page..."
@REM start https://ashejim.github.io/C964/intro.html
@REM echo "Gitpage may take a few minutes to update. END"
@REM cd D:\OneDrive - Western Governors University\jupyter-books\C964
