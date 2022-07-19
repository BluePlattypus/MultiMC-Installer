# MultiMC-Installer

## **Download:**

**https://raw.githubusercontent.com/BluePlattypus/MultiMC-Installer/main/installer.bat**

***Right click this link ⇧ and click "Save linked content as..." and save it to your Desktop.***

## **How to run:**

**1. Open "Installer.bat" 
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
    
## **Original Readme.md:**

## **MultiMC**

MultiMC is a custom launcher for Minecraft that focuses on predictability, long term stability and simplicity.

## Development
If you want to contribute, talk to us on [Discord](https://discord.gg/multimc) first.

While blindly submitting PRs is definitely possible, they're not necessarily going to get accepted.

We aren't looking for flashy features, but expanding upon the existing feature set without distruption or endangering future viability of the project is OK.

### Building
If you want to build the launcher yourself, check [BUILD.md](BUILD.md) for build instructions.

### Code formatting
Just follow the existing formatting.

In general, in order of importance:
* Make sure your IDE is not messing up line endings or whitespace and avoid using linters.
* Prefer readability over dogma.
* Keep to the existing formatting.
* Indent with 4 space unless it's in a submodule.
* Keep lists (of arguments, parameters, initializers...) as lists, not paragraphs. It should either read from top to bottom, or left to right. Not both.

## Translations
Translations can be done [on crowdin](https://translate.multimc.org). Please avoid making direct pull requests to the translations repository.

## License
Copyright &copy; 2013-2022 MultiMC Contributors

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this program except in compliance with the License. You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

## Forking/Redistributing/Custom builds policy
We keep Launcher open source because we think it's important to be able to see the source code for a project like this, and we do so using the Apache license.

The license gives you access to the source MultiMC is build from, but:
- Not the name, logo and other branding.
- Not the API tokens required to talk to services the launcher depends on.

Because of the nature of the agreements required to interact with the Microsoft identity platform, it's impossible for us to continue allowing everyone to build the code as 'MultiMC'. The source code has been debranded and now builds as `DevLauncher` by default.

You must provide your own branding if you want to distribute your own builds.

You will also have to register your own app on Azure to be able to handle Microsoft account logins.

If you decide to fork the project, a mention of its origins in the About dialog and the license is acceptable. However, it should be abundantly clear that the project is a fork *without* implying that you have our blessing.


***Enjoy*** 😁
