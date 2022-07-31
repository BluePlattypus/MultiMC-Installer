# MultiMC-Installer

## **Download:**

**https://raw.githubusercontent.com/BluePlattypus/MultiMC-Installer/main/installer.bat**

***Right click this link ⇧ and click "Save linked content as..." and save it to your Desktop.***

## **How to run:**

**1. Open "installer.bat" 
(if you want to install MultiMC in a protected folder E.g.: "C:\Program Files (x86)" then you need to run the .bat as administrator)**

**2. Enter the installationpath 
(E.g.: "C:\Program Files (x86)" and it will create a MultiMC folder in that directory, that means the location of the .exe would be: "C:\Program Files (x86)\MultiMC\MultiMC.exe"**

**3. MultiMC is now installed and a shortcut was made in your start menu and in the directory you ran the .bat, after you restarted your PC you can search for MultiMC in your Taskbar search**

## **Code:**

    set /p "IPATH=Enter your Installation Path (it creates a MultiMC folder in that directory): "
    cd "%IPATH%"
    curl "https://files.multimc.org/downloads/mmc-stable-win32.zip" --ssl-no-revoke -O
    tar -xf "mmc-stable-win32.zip"
    del "mmc-stable-win32.zip"
    powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%IPATH%\MultiMC.lnk');$s.TargetPath=('%IPATH%\MultiMC\MultiMC.exe');$s.IconLocation=('%IPATH%\MultiMC\MultiMC.exe');$s.WorkingDirectory=('%IPATH%\MultiMC');$s.WindowStyle=1;$s.Save()"
    cd "%AppData%\Microsoft\Windows\Start Menu\Programs"
    powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%AppData%\Microsoft\Windows\Start Menu\Programs\MultiMC.lnk');$s.TargetPath=('%IPATH%\MultiMC\MultiMC.exe');$s.IconLocation=('%IPATH%\MultiMC\MultiMC.exe');$s.WorkingDirectory=('%IPATH%\MultiMC');$s.WindowStyle=1;$s.Save()"
    icacls "%IPATH%\MultiMC" /grant %Username%:(OI)(CI)F /T
    type "Successfully installed!"
    
***Enjoy*** 😁
