@echo off
SET /P Message=Enter git BSCS commit comment:
title compile html, save to repo folder, update GitHub repo and website
jupyter-book build --all "..\BSCS"
echo "Compiling local ...\jupyter-books\BSCS ..."
xcopy /s /e /h /i /y "..\BSCS" "..\github_book_repo\BSCS"
echo "Copied local book to ..\github_book_repo\BSCS ..."
cd ..\github_book_repo\BSCS\
git add ./*
git commit -m "%Message%"
echo "Commited..."
git push
echo "Pushed..."
ghp-import -n -p -f _build/html
echo "Imported to git page..."
start https://ashejim.github.io/BSCS/intro.html
echo "Gitpage may take a few minutes to update. END"
cd ..\jupyter-books\BSCS