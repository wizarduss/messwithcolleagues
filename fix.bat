@echo off
if exist %LOCALAPPDATA%\lol.bat (del /f /q %LOCALAPPDATA%\lol.bat)
"%TMP%\nircmd.exe" win child class "Shell_TrayWnd" show class "TrayClockWClass"
"%TMP%\nircmd.exe" win trans process "outlook.exe" 255
if exist %TMP%/nircmd.exe (del /f /q %TMP%/nircmd.exe)
if exist %TMP%\trololo.mp3 (del /f /q %TMP%\trololo.mp3)
if exist %TMP%\lol.jpg (del /f /q %TMP%\lol.jpg)
if exist %TMP%\WallpaperChanger.exe (del /f /q %TMP%\WallpaperChanger.exe)
SCHTASKS.EXE /delete /tn "Windows Update" /f