@echo off
chcp 65001 >nul
title Matrix 数字雨 - 按 Ctrl+C 退出
color 0A
mode con: cols=100 lines=40
echo.
echo  按 Ctrl+C 退出
timeout /t 1 /nobreak >nul

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$width = [Console]::WindowWidth; ^
   $height = [Console]::WindowHeight; ^
   $chars = [char[]]'ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝ01'; ^
   $drops = New-Object int[] $width; ^
   for ($i = 0; $i -lt $width; $i++) { $drops[$i] = Get-Random -Min 1 -Max $height }; ^
   try { ^
     while ($true) { ^
       $y = Get-Random -Min 0 -Max $height; ^
       $x = Get-Random -Min 0 -Max $width; ^
       [Console]::SetCursorPosition($x, $y); ^
       Write-Host ($chars | Get-Random) -NoNewline -ForegroundColor Green; ^
       Start-Sleep -Milliseconds 30; ^
     } ^
   } catch { exit }"
