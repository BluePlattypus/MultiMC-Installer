set /p "IPATH=Enter your Installation Path (it creates a MultiMC folder in that directory): "
cd "%IPATH%"
curl "https://files.multimc.org/downloads/mmc-stable-win32.zip" --ssl-no-revoke -O
tar -xf "mmc-stable-win32.zip"
del "mmc-stable-win32.zip"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%IPATH%\MultiMC.lnk');$s.TargetPath=('%IPATH%\MultiMC\MultiMC.exe');$s.IconLocation=('%IPATH%\MultiMC\MultiMC.exe');$s.WorkingDirectory=('%IPATH%\MultiMC');$s.WindowStyle=1;$s.Save()"
cd "%AppData%\Microsoft\Windows\Start Menu\Programs"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%AppData%\Microsoft\Windows\Start Menu\Programs\MultiMC.lnk');$s.TargetPath=('%IPATH%\MultiMC\MultiMC.exe');$s.IconLocation=('%IPATH%\MultiMC\MultiMC.exe');$s.WorkingDirectory=('%IPATH%\MultiMC');$s.WindowStyle=1;$s.Save()"
icacls "%IPATH%\MultiMC" /grant %Username%:(OI)(CI)F /T
timeout /t 100
type "Successfully installed!"