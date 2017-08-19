set outdir=%1

Robocopy "C:\documents and settings\%username%\application data\microsoft\signatures" %outdir%\%username%\signatures *.* /e
Robocopy "c:\documents and settings\%username%\application data\microsoft\Outlook" %outdir%\%username%\NK2 *.nk2
Robocopy "C:\documents and settings\%username%\Desktop" %outdir%\%username%\Desktop *.* /e
Robocopy "C:\documents and settings\%username%\Favorites" %outdir%\%username%\Favorites *.* /e
Robocopy "C:\documents and settings\%username%\Pictures" %outdir%\%username%\Pictures *.* /e
Robocopy "C:\documents and settings\%username%\Music" %outdir%\%username%\Music *.* /e
Robocopy "C:\documents and settings\%username%\Documents" %outdir%\%username%\Documents *.* /e /XD "My Music" /XD "My Videos" /XD "My Pictures"
Robocopy "c:\documents and settings\%username%\application data\microsoft\templates" %outdir%\%username%\templates normal.dot
Robocopy "c:\users\%username%\appData\Local\Microsoft\Office" %outdir%\%username%\Local *.Officeui
Robocopy "c:\users\%username%\appData\Roaming\Microsoft\Office" %outdir%\%username%\Roaming *.Officeui
regedit /e %outdir%\%username%\CustomDictionaries.reg "HKEY_CURRENT_USER\Software\Microsoft\Shared Tools\Proofing tools\Custom Dictionaries"
echo Done