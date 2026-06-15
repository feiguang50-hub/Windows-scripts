@echo off
chcp 65001 >nul
title 一键整理桌面
echo === 一键整理桌面 ===
echo 即将把桌面文件按类型自动分类
echo.

:: 获取桌面路径
set "DESKTOP=%USERPROFILE%\Desktop"
if not exist "%DESKTOP%" set "DESKTOP=%USERPROFILE%\桌面"

echo 桌面路径：%DESKTOP%
echo.

:: 创建分类文件夹
for %%t in (文档 图片 视频 音频 压缩包 安装包 CAD 代码 快捷方式 其他) do (
    if not exist "%DESKTOP%\%%t" mkdir "%DESKTOP%\%%t" >nul
)

setlocal enabledelayedexpansion
set "COUNT=0"

:: 遍历桌面文件并归类
for /f "delims=" %%f in ('dir /b /a-d "%DESKTOP%\*" 2^>nul') do (
    set "EXT=%%~xf"
    set "TARGET=其他"

    for %%e in (.doc .docx .xls .xlsx .ppt .pptx .pdf .txt .md .rtf .wps) do if /i "!EXT!"=="%%e" set "TARGET=文档"
    for %%e in (.jpg .jpeg .png .gif .bmp .svg .webp .ico) do if /i "!EXT!"=="%%e" set "TARGET=图片"
    for %%e in (.mp4 .avi .mkv .mov .flv .wmv) do if /i "!EXT!"=="%%e" set "TARGET=视频"
    for %%e in (.mp3 .wav .flac .aac .m4a) do if /i "!EXT!"=="%%e" set "TARGET=音频"
    for %%e in (.zip .rar .7z .tar .gz) do if /i "!EXT!"=="%%e" set "TARGET=压缩包"
    for %%e in (.exe .msi .iso) do if /i "!EXT!"=="%%e" set "TARGET=安装包"
    for %%e in (.dwg .dxf .dwf) do if /i "!EXT!"=="%%e" set "TARGET=CAD"
    for %%e in (.py .js .html .css .java .cpp .bat) do if /i "!EXT!"=="%%e" set "TARGET=代码"
    for %%e in (.lnk .url) do if /i "!EXT!"=="%%e" set "TARGET=快捷方式"

    move /y "%DESKTOP%\%%f" "%DESKTOP%\!TARGET!\" >nul 2>&1
    set /a COUNT+=1
)

echo.
echo 整理完成！共移动 !COUNT! 个文件
echo.
echo 各分类统计：
for %%t in (文档 图片 视频 音频 压缩包 安装包 CAD 代码 快捷方式 其他) do (
    set /a NUM=0
    for /f %%n in ('dir /b /a-d "%DESKTOP%\%%t\*" 2^>nul ^| find /v /c ""') do set /a NUM=%%n
    if !NUM! gtr 0 echo   %%t : !NUM! 个
)
endlocal

echo.
pause
