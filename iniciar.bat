@echo off
chcp 65001 >nul
call "%~dp0config.bat"
echo Ligando o Social Sound... (a primeira vez demora um pouco)

REM 1) Servidor de voz (narracao) e da janela com abas
cd /d "%~dp0server"
start "Social Sound - servidor" /min cmd /c "call .venv\Scripts\activate && python server.py"

REM 2) Servidor do editor de video
if not exist "%AUTOEDITOR_DIR%\server\index.js" goto sem_editor
start "Social Sound - editor de video" /min cmd /c ""%~dp0_editor.bat""
goto espera_ini

:sem_editor
echo.
echo Nao encontrei o editor de video na pasta indicada em config.bat.
echo A narracao abre normalmente; so a aba "Edicao de video" ficara desligada.
timeout /t 6 >nul

:espera_ini
set /a n=0
:espera
timeout /t 2 /nobreak >nul
curl -s -o nul http://localhost:8000/estudio/
if not errorlevel 1 goto abrir
set /a n+=1
if %n% LSS 60 goto espera
:abrir
start "" msedge --app=http://localhost:8000/estudio/ --window-size=1400,900
exit
