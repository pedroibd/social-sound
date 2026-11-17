@echo off
REM Liga so o servidor do editor de video (sem abrir outro navegador). Usado pelo iniciar.bat.
call "%~dp0config.bat"
cd /d "%AUTOEDITOR_DIR%"
if exist "runtime\node.exe" (set "NODE_EXE=%AUTOEDITOR_DIR%\runtime\node.exe") else (set "NODE_EXE=node")
set OPEN_BROWSER=0
"%NODE_EXE%" server\index.js
