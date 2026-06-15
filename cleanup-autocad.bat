@echo off
title AutoCAD 彻底清理工具
echo === AutoCAD 彻底清理工具 ===
echo 请右键 → 以管理员身份运行
echo.

echo [1/5] 清理服务...
for %%s in ("AdskLicensingService" "FlexNet Licensing Service" "Autodesk Desktop Licensing Service" "AdSSO" "Autodesk Content Service") do (
    net stop "%%s" 2>nul
    sc delete "%%s" 2>nul
)

echo [2/5] 清理许可文件...
rd /s /q "C:\ProgramData\Autodesk\Adlm" 2>nul
rd /s /q "C:\ProgramData\FLEXnet" 2>nul
rd /s /q "%APPDATA%\Autodesk\ADLM" 2>nul
del /q "C:\ProgramData\FLEXnet\adskflex_*.tsf" 2>nul

echo [3/5] 清理主程序目录（C/D/E/F 盘）...
for %%d in (C D E F) do (
    rd /s /q "%%d:\Program Files\Autodesk" 2>nul
    rd /s /q "%%d:\Program Files (x86)\Autodesk" 2>nul
    rd /s /q "%%d:\Autodesk" 2>nul
)

echo [4/5] 清理用户配置和计划任务...
rd /s /q "%APPDATA%\Autodesk" 2>nul
rd /s /q "%LOCALAPPDATA%\Autodesk" 2>nul
schtasks /delete /tn "Autodesk*" /f 2>nul

echo [5/5] 清理注册表...
reg delete "HKLM\SOFTWARE\Autodesk" /f 2>nul
reg delete "HKLM\SOFTWARE\Autodesk\Adlm" /f 2>nul
reg delete "HKLM\SOFTWARE\Autodesk\ADSKLicensing" /f 2>nul
reg delete "HKLM\SOFTWARE\FLEXlm" /f 2>nul
reg delete "HKCU\Software\Autodesk" /f 2>nul
reg delete "HKCU\Software\Autodesk\ADLM" /f 2>nul
reg delete "HKCU\Software\Autodesk\ADSKLicensing" /f 2>nul

echo.
echo 全部完成！请重启电脑后重装
echo 提示：先检查 文档\Autodesk\  里面有没有要保留的图纸
pause
