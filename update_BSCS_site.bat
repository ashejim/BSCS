@echo off
REM ============================================================
REM  Build and deploy the BSCS book (Jupyter Book 2 / MyST) to
REM  GitHub Pages.
REM
REM  Layout (current):  this folder IS the git repo.
REM    repo   : github.com/ashejim/BSCS
REM    source : main branch (this folder)
REM    site   : gh-pages branch  ->  https://ashejim.github.io/BSCS/
REM
REM  Requires (one-time):  pip install mystmd ghp-import
REM                        (mystmd also needs Node.js on PATH)
REM ============================================================

REM --- Always run from the folder this script lives in (repo root) ---
cd /d "%~dp0"

REM --- Make sure Python's Scripts dir (myst, ghp-import) is on PATH ---
for /f "delims=" %%p in ('python -c "import sysconfig;print(sysconfig.get_path('scripts'))"') do set "PYSCRIPTS=%%p"
set "PATH=%PYSCRIPTS%;%PATH%"

REM --- Site is served from a subpath, so assets must be prefixed ---
REM     https://ashejim.github.io/BSCS/  ->  BASE_URL=/BSCS
set "BASE_URL=/BSCS"

REM --- Remove stray artifacts so they are not committed ---
FOR /d /r . %%d IN (.history) DO @IF EXIST "%%d" rd /s /q "%%d"
DEL /S /Q "output_plot*.png" 2>nul

REM --- Commit message for the source push ---
SET /P Message=Enter git BSCS commit comment:

title Build BSCS book, push source to main, deploy html to gh-pages

REM --- 1) Build the static HTML (output goes to _build\html) ---
echo(
echo === Building static HTML with MyST (BASE_URL=%BASE_URL%) ===
call myst build --html
if errorlevel 1 goto :error

REM --- 2) Commit and push the SOURCE to main ---
echo(
echo === Pushing source to main ===
git add -A
git commit -m "%Message%"
git push origin main

REM --- 3) Deploy the built HTML to gh-pages (-n adds .nojekyll,   ---
REM         required because MyST puts assets in _assets / _shared) ---
echo(
echo === Deploying _build/html to gh-pages ===
call ghp-import -n -p -f _build/html
if errorlevel 1 goto :error

echo(
echo === Done. GitHub Pages may take a few minutes to update. ===
start "" "https://ashejim.github.io/BSCS/"
goto :eof

:error
echo(
echo *** BUILD OR DEPLOY FAILED - see the messages above. ***
exit /b 1
