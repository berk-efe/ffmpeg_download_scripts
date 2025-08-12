# ffmpeg_download_scripts

### Run

Open PowerShell as admin, then paste and run this command:

```powershell
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/berk-efe/ffmpeg_download_scripts/main/install_ffmpeg.bat' -OutFile "$env:TEMP\install_ffmpeg.bat"; Start-Process cmd -ArgumentList '/c "%TEMP%\install_ffmpeg.bat"' -Verb RunAs -Wait
