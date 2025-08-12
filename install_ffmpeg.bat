@echo off
setlocal

set "INSTALL_DIR=%ProgramFiles%\ffmpeg"

mkdir "%INSTALL_DIR%" 2>nul

curl.exe -L -o "%TEMP%\ffmpeg.zip" "https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl-shared.zip"

powershell -command "Expand-Archive -Force '%TEMP%\ffmpeg.zip' '%INSTALL_DIR%'"

for /d %%D in ("%INSTALL_DIR%\*") do set "VERSIONED_DIR=%%D"

set "BIN_DIR=%VERSIONED_DIR%\bin"

setx /M PATH "%PATH%;%BIN_DIR%"

del "%TEMP%\ffmpeg.zip"

echo ffmpeg installed to %INSTALL_DIR%
set /p DUMMY=Hit ENTER to end...

endlocal