@echo off
REM Encerra o servidor de voz e o editor de video, liberando a memoria da placa de video.
for %%p in (8000 4000) do (
  for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":%%p" ^| findstr "LISTENING"') do taskkill /F /T /PID %%a >nul 2>&1
)
echo Social Sound e editor de video encerrados.
timeout /t 2 >nul
