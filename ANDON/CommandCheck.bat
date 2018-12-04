@echo off

rem This grants the program admin level perms.


:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
	
	

	
:start

Rem user prefs load starts here ----->>>

Rem Do not edit these here the options are located in the config file and can be opened with a text editor such as notepad ++

for /f "tokens=1*delims=:" %%G in ('findstr /n "^" UserPrefs.config') do if %%G equ 1 %%H

for /f "tokens=1*delims=:" %%G in ('findstr /n "^" UserPrefs.config') do if %%G equ 2 %%H

for /f "tokens=1*delims=:" %%G in ('findstr /n "^" UserPrefs.config') do if %%G equ 3 %%H

:andonrun

set /p id="Please Enter Error ID String:"

goto %id%



:/1
call 1.bat
pause

:/2
call 2.bat
pause

:/3
call 3.bat
pause

:/4
call 4.bat
pause

:/5
call 5.bat
pause

:/6
call 6.bat
pause

:/7
call 7.bat
pause

:/8
call 8.bat
pause

:/9
call 9.bat
pause

:/10
call 10.bat
pause

:/11
call 11.bat
pause

:/12
call 12.bat
pause

:/13
call 13.bat
pause

:/14
call 14.bat
pause

:/15
call 15.bat
pause

:/16
call 16.bat
pause

:/17
call 17.bat
pause

:/18
call 18.bat
pause

:/19
call 19.bat
pause

:/20
call 20.bat
pause

:/21
call 21.bat
pause

:/22
call 22.bat
pause

:/23
call 23.bat
pause

:/24
call 24.bat
pause

:/25
call 25.bat
pause

:/26
call 26.bat
pause

:/27
call 27.bat
pause

:/28
call 28.bat
pause

:/29
call 29.bat
pause

:/30
call 30.bat
pause

:/31
call 31.bat
pause

:/32
call 32.bat
pause

:/33
call 33.bat
pause

:/34
call 34.bat
pause

:/35
call 35.bat
pause

:/36
call 36.bat
pause

:/37
call 37.bat
pause

:/38
call 38.bat
pause

:/39
call 39.bat
pause

:/40
call 40.bat
pause


REM Notes go here.

REM for /f "delims=" %%a in (list.txt) do break>%%a.txt

REM this above takes a list and generates multiple files based 
REM on that list





REM    @echo off
REM    setlocal enableextensions disabledelayedexpansion

REM    set "folderName=test"

REM    2>nul (md "%folderName%"||cmd /q /c"for /l %%a in (1 1 100000) do md "%folderName%%%a"&&exit %%a")
REM    if errorlevel 1 set "folderName=%folderName%%errorlevel%"

REM    echo Created %folderName%

REM the above code checks for folder names and numbers them in a 1.2.3.4 etc modification
REM needed for actual files